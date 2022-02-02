# Pontos de melhoria - Kong

## Widgets

- [ ] Responsividade
    
    (É necessário garantir a adaptação dos Widgets em diferentes tamanhos de telas.)
    - Valores estão fixos, Widgets podem quebrar em telas de diferentes tamanhos
        - Calcular proporção dos Widgets em comparação à tela em análise para torná-los adaptativos
        ```dart
        final size = MediaQuery.of(context).size; // pegar dimensões da tela

        ///
        /// [dx] = [(dimensaoComponenteX / telaX)] * (size.width) // Dimensões de largura (x)
        ///
        /// [dy] = [(dimensaoComponenteY / telaY)] * (size.height) // Dimensões de altura (y)

        /// Exemplo
        return SizedBox(
            height: size.height * .4,
            width: size.width: * .078,
            child: ...,
        );
        ```
        - Alguns dos Widgets estão responsivos comparados aos seus Widgets pais com a utilização do `LayoutBuilder`, mas isso não garante a responsividade dos próprios `widgets pais`.
    
    - Widget `Positioned` na própria `HomePage` também não se encontra com valores responsivos. O posicionamento dos Widgets sendo mantido com valores fixos não garante que será mantido em telas de tamanhos diferentes.
        - A solução é semelhante à aplicação de responsividade nas dimensões dos Widgets.

- [ ] Customização
    - Cores dos Widgets não estão padronizadas e também não dão a possibilidade de uma fácil alteração por parâmetros.
    
    É importante permitir essa customização para maior flexibilidade ao atender as demandas do cliente em casos de mudança de decisões.

    Exemplo do que pode ser feito:
    ```dart
    class LatticeWidget extends StatelessWidget {
        final Size size;
        final Color color;
        final Color lightColor;
        final Color darkColor;

        const LatticeWidget({
            Key? key,
            this.size = const Size(36, 24),
            this.color = AppColors.pink,
            this.lightColor = AppColors.lightPink,
            this.darkColor = AppColors.darkPink,
        }) : super(key: key);
    }
    ```
    Isso permite que não precisemos, em casos de decisões do cliente, alterar a raiz do Widget, um por um. Podemos alterar os valores passando os novos por parâmetro.

    ```dart
    ...
    LatticeWidget(
        color: AppColors.blue,
        lightColor: AppColors.lightBlue,
        darkColor: AppColors.darkBlue,
    ),
    ...
    ```


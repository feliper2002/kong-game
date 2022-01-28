# Pontos de melhoria

## Widgets

- [ ] Responsividade
    - Valores estão fixos, Widgets podem quebrar em telas de diferentes tamanhos
        - Carlcular proporção dos Widgets em comparação à tela em análise para torná-los adaptativos
        ```dart
        final size = MediaQuery.of(context).size; // pegar dimensões da tela

        ///
        /// [dx] = [(dimensaoComponenteX / telaX)] * (size.width) // Dimensões de largura (x)
        ///
        /// [dy] = [(dimensaoComponenteY / telaY)] * (size.height) // Dimensões de altura (y)
        ///
        ```

- [ ] Customização
    - Cores dos Widgets não estão padronizadas e também não dão a possibilidade de uma fácil alteração por parâmetros

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


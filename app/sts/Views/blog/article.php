<?php
if (!defined('URL')) {
    header("Location: /");
    exit();
}
?>
<main role="main">

    <div class="jumbotron blog">
        <div class="container">
            <h2 class="display-4 text-center servicosh2"></h2>
            <div class="row">
                <div class="col-md-8 blog-main">
                    <?php
                    if (!empty($this->dados['visualizarArtigo'][0])) {
                        extract($this->dados['visualizarArtigo'][0]);
                        ?>
                        <div class="blog-post">
                            <h2 class="blog-post-title"><?php echo $titulo; ?></h2>
                            <img src="<?php echo URL . 'assets/images/article/'
                                    . $id . '/' . $imagem; ?>"
                                 class="img-fluid artimg add-shadow"
                                 alt="<?php echo $titulo; ?>">
                            <?php echo $conteudo; ?>
                        </div>
                        <nav class="blog-pagination">
                            <?php
                            if (!empty($this->dados['artigoAnterior'][0])) {
                                extract($this->dados['artigoAnterior'][0]);
                                echo "<a class='btn btn-outline-primary' href='" . URL . "artigo/$slug'>Anterior</a>";
                            } else {
                                echo "<a class='btn btn-outline-secondary disabled' href='#'>Anterior</a>";
                            }
                            if (!empty($this->dados['artigoProximo'][0])) {
                                extract($this->dados['artigoProximo'][0]);
                                echo "<a class='btn btn-outline-primary' href='" . URL . "artigo/$slug'>Próximo</a>";
                            } else {
                                echo "<a class='btn btn-outline-secondary disabled' href='#'>Próximo</a>";
                            }
                            ?>
                        </nav>
                        <?php
                    } else {
                        echo "<div class='alert alert-danger'>Artigo não encontrado!</div>";
                    }
                    ?>
                </div>

                <aside class="col-md-4 blog-sidebar">
                    <?php if (!empty($this->dados['informacaoAutor'][0])) { ?>
                    <div class="p-3 mb-3 bg-light rounded">
                        <?php extract($this->dados['informacaoAutor'][0]); ?>
                        <h4 class="font-italic"><?php echo $titulo; ?></h4>
                        <img src="<?php echo URL . 'assets/images/infoAuthor/'
                                . $id . '/' . $imagem; ?>" 
                             class="img-fluid add-shadow" 
                             alt="<?php echo $titulo; ?>">
                        <p class="mb-0"><?php echo $descricao; ?></p>
                    </div>
                <?php } ?>

                    <div class="p-3">
                        <h4 class="font-italic">Recentes</h4>
                        <ol class="list-unstyled mb-0">
                            <?php
                            foreach ($this->dados['artigosRecentes'] as $artigoRec) {
                                extract($artigoRec);
                                ?>
                                <li>
                                    <a class="text-muted link-mouse"
                                       href="<?php echo URL . 'artigo/' . $slug ?>"><?php echo $titulo ?></a>
                                </li>
                                <?php
                            }
                            ?>
                        </ol>
                    </div>

                    <div class="p-3">
                        <h4 class="font-italic">Destaques</h4>
                        <ol class="list-unstyled">
                            <?php
                            foreach ($this->dados['artigosDestaque'] as $artigoDestaque) {
                                extract($artigoDestaque);
                                ?>
                                <li>
                                    <a class="text-muted link-mouse"
                                       href="<?php echo URL . 'artigo/' . $slug ?>"><?php echo $titulo ?></a>
                                </li>
                                <?php
                            }
                            ?>
                        </ol>
                    </div>
                </aside>
            </div>
        </div>
    </div>

</main>

<?php include "../include/cabecalho.php"?>
<!-- Inicio do formulario -->
<div class="container desce">
<form id="cadastroForm" method="POST" action="cadastrar.php" >
    <fieldset>
        <legend>Cadastro da Empresa</legend>
    <div class="form-group">
        <label for="exampleFormControlInput1" class="form-label">Nome da empresa:
            <input  class="form-control" name="nome_empresa" type="text" id="nome_empresa" size="100%" required/></label><br />
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Email:
            <input id="email" class="form-control" name="email" type="email" size="100%" required/></label><br />
    </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Telefone Fixo:
                <input id="email" class="form-control" name="telefone_fixo" type="tel" size="100%" required/></label><br />
        </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Celular:
            <input id="celular" class="form-control" name="celular" type="tel" size="100%" required/></label><br />
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Senha:
            <input id="senha" class="form-control" name="senha" type="password" size="100%" required/></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">CNPJ:
        <input id="cpf" class="form-control" name="cnpj" type="text" size="100%" required/></label><br />
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Cep:
            <input class="form-control" name="cep" type="text" id="cep" value="" size="10" maxlength="9"
                   onblur="pesquisacep(this.value);" size="100%" required/></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Rua:
        <input  class="form-control" name="rua" type="text" id="rua"  size="100%" required/></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Número:
        <input id="numero" class="form-control" name="numero" type="text"  size="100%" required /></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Complemento:
        <input id="complemento" class="form-control" name="complemento" type="text" size="100%" /></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Bairro:
        <input class="form-control" name="bairro" type="text" id="bairro" size="100%" required /></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Cidade:
        <input class="form-control" name="cidade" type="text" id="cidade" size="100%" /></label><br />
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Estado:
        <input class="form-control" name="estado" type="text" id="uf" size="2" /></label><br />
    </div>
        <input class="btn btn-primary" type="submit" value="Cadastrar">
        <label for="exampleFormControlInput1" class="form-label" hidden="hidden">IBGE:
            <input class="form-control"  type="text" id="ibge" size="8" hidden="hidden"/></label><br />

    </fieldset>
</form>
</div>
<script type="text/javascript" src="../assets/js/viacep.js"></script>
<?php include "../include/jsrodape.php"?>
</body>

</html>

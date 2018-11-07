## USPTeX

## Sobre

Classe LaTeX criada por Caio Fattori para elaboração de teses, dissertações e monografias na USP. Está razoavelmente de acordo com as [Diretrizes para apresentação de dissertações e teses da USP, versão ABNT](https://dx.doi.org/10.11606/9788573140606).

Desde que comecei a usar, descobri alguns problemas e tentei acrescentar algumas melhorias. A versão do USPTeX disponível neste repositório foi alterada a partir da versão 0.3beta3 do Caio. Os arquivos originais se encontram em <http://pmrlsapro.poli.usp.br/projects/projects/usptex/files>.

A documentação criada pelo Caio se encontra em <http://pmrlsapro.poli.usp.br/projects/projects/usptex/wiki>.

## Instalação

### Distribuições Linux

Copie o conteúdo da pasta `texmf` para `/usr/share/texmf/`:

```
sudo cp -r texmf /usr/share/
```

Rode `texhash` para atualizar o banco de dados TeX:

```
sudo texhash
```

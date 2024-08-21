CREATE TABLE usuarios (
  id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR NOT NULL AUTO_INCREMENT,
  email VARCHAR NULL,
  senha VARCHAR NULL,
  foto VARCHAR NULL,
  data_criacao DATETIME NULL,
  data_atualizacao DATETIME NULL,
  PRIMARY KEY(id)
);

CREATE TABLE produtos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR NULL,
  descricao VARCHAR NULL,
  imagem VARCHAR NULL,
  preco FLOAT NULL,
  data_criacao DATETIME NULL,
  data_atualizacao DATETIME NULL,
  PRIMARY KEY(id)
);

CREATE TABLE entregadores (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR NULL,
  email VARCHAR NULL,
  senha VARCHAR NULL,
  foto VARCHAR NULL,
  data_criacao DATETIME NULL,
  data_atualizacao DATETIME NULL,
  PRIMARY KEY(id)
);

CREATE TABLE estabelecimentos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR NULL,
  descricao VARCHAR NULL,
  localizacao VARCHAR NULL,
  imagem VARCHAR NULL,
  data_criacao DATETIME NULL,
  data_atuallizacao DATETIME NULL,
  PRIMARY KEY(id)
);

CREATE TABLE pedidos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  entregadores_id INTEGER UNSIGNED NOT NULL,
  usuarios_id INTEGER UNSIGNED NOT NULL,
  estabelecimentos_id INTEGER UNSIGNED NOT NULL,
  endereco_origem VARCHAR NULL,
  endereco_destino VARCHAR NULL,
  distancia INT NULL,
  valor_bruto FLOAT NULL,
  desconto FLOAT NULL,
  valor_frete FLOAT NULL,
  valor_total FLOAT NULL,
  situacao VARCHAR NULL,
  data_criacao DATETIME NULL,
  data_atualizacao DATETIME NULL,
  PRIMARY KEY(id),
  INDEX pedidos_FKIndex1(estabelecimentos_id),
  INDEX pedidos_FKIndex2(usuarios_id),
  INDEX pedidos_FKIndex3(entregadores_id)
);

CREATE TABLE pedido_items (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  pedidos_id INTEGER UNSIGNED NOT NULL,
  produtos_id INTEGER UNSIGNED NOT NULL,
  quantidade INTEGER UNSIGNED NULL,
  valor_total FLOAT NULL,
  data_criacao DATETIME NULL,
  data_atualizacao DATETIME NULL,
  PRIMARY KEY(id),
  INDEX pedido_items_FKIndex3(produtos_id),
  INDEX pedido_items_FKIndex3(pedidos_id),
  INDEX pedido_items_FKIndex3(produtos_id)
);



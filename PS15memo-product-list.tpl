{* --will's Bar-- *}
					{*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////*}


					{* 
						$product.id_product = id produit
						Product::getProductName($product.id_product) = donne le nom du produit
						Product::getRealQuantity($product.id_product) = donne la quantité totale de la ref produit
						Product::getRealQuantity($product.id_product,$product.id_product_attribute) = donne la quantité réel de la déclinaison affiché
						from=AttributeGroup::getAttributesGroups(Tools::getValue('id_lang')) = sort des tableaux de tous les groupes d'attibuts

					<p> ID : attribut de produit : {$product.id_product_attribute}</p>
					<p> ID : produit : {$product.id_product}</p>	
					{foreach from=Product::getAttributesParams($product.id_product, $product.id_product_attribute) item=toto key=k}
						{$k}{$toto}
					{/foreach}
					

					{foreach from=Product::getAttributesInformationsByProduct($product.id_product) item=toto key=k}
					<p><strong>{$toto}</strong></p>
					{/foreach}

					<p>Quantité Réelle du produit : {Product::getRealQuantity($product.id_product)}</p>
					<p>Quantité Réelle de la déclinaison affiché : {Product::getRealQuantity($product.id_product,$product.id_product_attribute)}</p>

					/////// Donne tous les attributs des groupes d'attributs avec l'id n°2 /////////////////
					{foreach from=AttributeGroup::getAttributes(Tools::getValue('id_lang'), "2") item=toto}
						{$toto.name}donne le nom de l'attribut
						<hr/>
						{foreach from=$toto item=tata}
							<p>{$tata}</p>
						{/foreach}
						<hr/>
					{/foreach}

					/////////////// Sort tous les attributs du site avec leur noms ////////////////////////

					{foreach from=AttributeGroup::getAttributesGroups(Tools::getValue('id_lang'), true) item=zozo}
						{foreach from=$zozo item=tata key=k}
							<p>{$k} : {$tata}</p>
						{/foreach}
					{/foreach}

					{foreach from=AttributeGroup::getAttributesGroups(Tools::getValue('id_lang'), true) item=zozo}
						{foreach from=AttributeGroup::getAttributes(Tools::getValue('id_lang'), "2") item=toto}
							<hr/>
							{foreach from=$toto item=tata key=k}
								<p>{$k} : {$tata}</p>
							{/foreach}
							<hr/>
						{/foreach}
					{/foreach}
					
					///////////////////////////////////////////////////////////////////////////////////////
					
					{Product::getDefaultAttribute($product.id_product)}
					donne l'ID de la déclinaison par défaut

					///////////////////////////////////////////////////////////////////////////////////////
					
					{foreach from=Product::getAttributesParams($product.id_product, $product.id_product_attribute) item=toto key=k}
						{$toto.name}
					{/foreach}
					donne le nom de la couleur de la déclinaison affiché

					{foreach from=AttributeGroup::getAttributes(Tools::getValue('id_lang'), 2) item=toto}
						<p style="background: {$toto.color};" class="color_pick selected">{$toto.name}</p>
					{/foreach}
					donne le nom et la couleur de tous les attributs de la catégorie 2 de couleurs

					{foreach from=Product::getAttributesInformationsByProduct($product.id_product) item=toto key=k}
						{foreach from=$toto item=tata key=k}
							<p>{$k} = {$tata}</p>
						{/foreach}
					{/foreach}	
					donne toutes les déclinaisons de couleurs possibles avec les infos sur les attributs

					///////////////////////////////////////////////////////////////////////////////////////

					{foreach from=AttributeGroup::getAttributesGroups(Tools::getValue('id_lang'), true) item=toto}
					<p><strong>{$toto}</strong></p>
					{/foreach}
					
					{foreach from=AttributeGroup::getAttributes(Tools::getValue('id_lang'), 2) item=toto}
						<strong>{$toto.name}</strong>
						<div style="width: 18px; height: 12px; border: 1px solid #996633; background-color:{$toto.color}; "></div>
						<hr/>
						{foreach from=$toto item=tata key=k}
							<p>{$k} = {$toto} : {$tata}</p>
						{/foreach}
						<hr/>
					{/foreach}

					///////////////////////////////////////////////////////////////////////////////////////

					{foreach from=Product::getAttributesInformationsByProduct($product.id_product) item=toto key=k}
						{if $toto.group=="Couleur"}
							<hr/>ID du groupe d'attribut : {$toto.id_attribute_group}<hr/>
							<hr/>nom du groupe d'attribut : {$toto.group}<hr/>
							<hr/>nom de l'attribut : {$toto.attribute}<hr/>
							<hr/>ID attribut : {$toto.id_attribute}<hr/>
						{/if}
					{/foreach}

					///////////////////////////////////////////////////////////////////////////////////////

			    	<span class="block-attributs-couleurs" style="margin:5px 0 0 0;float:left">
						{foreach from=Product::getAttributesInformationsByProduct($product.id_product) item=toto key=k}
							{if $toto.group=="COULEURS"}
								{foreach from=AttributeGroup::getAttributes(Tools::getValue('id_lang'), 21) item=zozo}
									{if $zozo.name==$toto.attribute}
										<a style="float:left;display:block;margin-right: 0.5em;width: 22px; height: 22px; border: 1px solid #996633;border-radius: 12px; background-color:{$zozo.color};" class="divcolor-{$toto.id_attribute}" title="{$toto.attribute}"></a>
									{/if}
								{/foreach}
							{/if}
						{/foreach}
					</span>
					<div class="clear"></div>

					///////////////////////////////////////////////////////////////////////////////////////
								////////////// 			IMPORTANT 		/////////////////
					/////////////////////////////////////   |    /////////////////////////////////////////
					/////////////////////////////////////  \ /  /////////////////////////////////////////

							DONNE TOUTES LES VALEURS de $product

							{foreach from=$product item=magic key=k}
								<p>{$k} : {$magic}</p>
							{/foreach}

							/!\ {$product} c'est le produit affiché, c'est à dire la déclinaison sélectionnée
							/!\ {$products} ce sont les produits affichés

							{$product.id_product_attribute} c'est la déclinaison du produit affiché

							{StockAvailable::getQuantityAvailableByProduct( $product.id_product, $product.id_product_attribute )}
							C'est la quantité de la déclinaison du produit affiché

							{$nb_products}
							quantité du nombre de produit de la catégorie affiché

					///////////////////////////////////////////////////////////////////////////////////////

					*}

					{StockAvailable::getQuantityAvailableByProduct( $product.id_product, $product.id_product_attribute )}




{* --will's Bar End-- *}
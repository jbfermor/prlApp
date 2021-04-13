//FILTROS DE TABLAS
var busqueda = document.getElementById('buscaEmpresa');
var empresaIndex = document.getElementById('empresasIndex').tBodies[0];

   buscaTabla = function(){
     texto = busqueda.value.toLowerCase();
     var r=0;
     while(row = empresaIndex.rows[r++])
     {
       if ( row.innerText.toLowerCase().indexOf(texto) !== -1 )
         row.style.display = null;
       else
         row.style.display = 'none';
     }
   }

   busqueda.addEventListener('keyup', buscaTabla);

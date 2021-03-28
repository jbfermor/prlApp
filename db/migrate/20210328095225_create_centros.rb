class CreateCentros < ActiveRecord::Migration[6.1]
  def change
    create_table :centros do |t|
      t.string :nombre
      t.string :direccion
      t.string :poblacion
      t.string :provincia
      t.integer :cp
      t.string :actividad
      t.integer :n_trabajadores
      t.string :localizacion
      t.integer :superficie
      t.integer :plantas_ocupadas
      t.integer :aforo_max
      t.string :entorno
      t.string :act_derecha
      t.string :act_izquierda
      t.string :act_frontal
      t.string :act_trasera
      t.string :act_superior
      t.string :act_inferior
      t.string :acceso_empleados
      t.string :accesso_clientes
      t.integer :inst_baja_tension
      t.string :ubicacion_cuadro_general
      t.integer :es_ct
      t.integer :ub_interior_ct
      t.integer :ub_caseta_ext_ct
      t.integer :potencia_ct
      t.string :e_mant_ct
      t.integer :es_aacc
      t.string :sit_aacc
      t.integer :es_ventilacion
      t.string :sit_ventilacion
      t.integer :es_ascensor
      t.integer :n_ascensores
      t.integer :es_frio
      t.integer :n_cam_congelados
      t.integer :n_cam_frio
      t.string :ub_compresores
      t.string :otras_inst

      t.timestamps
    end
  end
end

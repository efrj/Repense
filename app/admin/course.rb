ActiveAdmin.register Course do

    permit_params :name, :description, :status

    index do
        selectable_column
        id_column
        column :name
        column :created_at
        actions
      end

    form do |f|
        f.inputs do
            f.input :name
            f.input :description
            f.input :status, as: :select, collection: { 'Ativo' => 1, 'Inativo' => 0 }
        end
        f.actions
    end

    show do
        render 'show'
    end

end
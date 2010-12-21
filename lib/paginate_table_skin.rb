# Paginate Table Skin
module PaginateTableSkin
  mattr_reader :default_actions
  @@default_actions = ActiveSupport::OrderedHash.new #[{:new => {}}, :edit, :delete, :refresh]

  @@default_actions[:new]     = {:label => I18n.t("actions.new"),
    :url=>"%s/new", :image=>"/images/paginate/new.png",
    :onclick => "Paginate.Button.activateNew(this)"
  }
  @@default_actions[:edit]    = {:label => I18n.t("actions.edit"),
    :url=>"%s/:id/edit", :image=>"/images/paginate/edit.png",
    :onSelectionChanged =>"Paginate.Button.adjustForOne(source,event)",
    :onclick => "Paginate.Button.activateEdit(this)"
  }
  @@default_actions[:delete]  = {:label => I18n.t("actions.delete"),
    :url=>"%s/:id", :image=>"/images/paginate/delete.png",
    :onSelectionChanged =>"Paginate.Button.adjustForMore(source,event)",
    :onclick => "Paginate.Button.activateDelete(this)"
  }
  @@default_actions[:refresh] = {:label => I18n.t("actions.refresh"),
    :url=>"%s", :image=>"/images/paginate/refresh.png",
    :onclick => "Paginate.Button.activateRefresh(this)"
  }

end
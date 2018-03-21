module ButtonsHelper
  def show_button(resource_or_array)
    resource_ary = [resource_or_array].flatten
    main_resource = resource_ary.last

    link_to main_resource, class: 'button small secondary radius' do
      concat fa_icon icon(:show), title: "View #{main_resource.model_name.human}"
      concat content_tag(:span, "View #{main_resource.model_name.human}")
    end
  end
end

class ConsiderIt.Proposal extends Backbone.Model
  defaults: { }
  name: 'proposal'

  initialize : ->
    super
    @attributes.description = htmlFormat(@attributes.description)


  url : () ->
    if @id
      Routes.proposal_path( @attributes.long_id ) 
    else
      Routes.proposals_path( )

  title : (max_len = 140) ->
    if @get('name') && @get('name').length > 0
      my_title = @get('name')
    else if @get('description')
      my_title = @get('description')
    else
      throw 'Name and description nil'
    

    if my_title.length > max_len
      "#{my_title[0..max_len]}..."
    else
      my_title

  @description_detail_fields : ->
    ['long_description', 'additional_details']
    
  description_detail_fields : ->
    [ ['long_description', 'Long Description', $.trim(htmlFormat(@attributes.long_description))], 
      ['additional_details', 'Fiscal Impact Statement', $.trim(htmlFormat(@attributes.additional_details))] ]

  participants : ->
    $.parseJSON(@attributes.participants) 
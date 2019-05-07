Declare @execution_id bigint

EXEC [SSISDB].[catalog].[create_execution] @package_name=N'Package.dtsx',
    @execution_id=@execution_id OUTPUT,
    @folder_name=N'Deployed Projects',
	  @project_name=N'Integration Services Project1',
  	@use32bitruntime=False,
	  @reference_id=Null

Select @execution_id

DECLARE @var0 smallint = 1

EXEC [SSISDB].[catalog].[set_execution_parameter_value] @execution_id,
    @object_type=50,
	  @parameter_name=N'LOGGING_LEVEL',
	  @parameter_value=@var0

EXEC [SSISDB].[catalog].[start_execution] @execution_id
GO

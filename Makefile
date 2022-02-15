ifeq ($(OS),Windows_NT)
    #Windows stuff
    RM = del /Q
    COPY = copy
    FixPath = $(subst /,\,$1)
else
    #Linux stuff
    RM = rm -Rf
    COPY = cp
    FixPath = $1
endif

ifneq ("$(wildcard shorts1.tfvars)","")
    FILE_EXISTS = 1
else
    FILE_EXISTS = 0
endif

.SILENT:

init:
	$(RM) $(call FixPath,.terraform/)

    ifeq ($(FILE_EXISTS),0)
		echo "Copying default empty terraform variables file (shorts1.tfvars)..."
		$(COPY) empty.tfvars shorts1.tfvars
    endif
	terraform init -var-file="shorts1.tfvars"

plan:
	terraform plan -var-file="shorts1.tfvars"

apply:
	terraform apply -var-file="shorts1.tfvars"

show:
	terraform output SERVICEBUS_CONNECTION_QUEUE
	terraform output SERVICEBUS_QUEUENAME

destroy:
	terraform destroy -var-file="shorts1.tfvars"
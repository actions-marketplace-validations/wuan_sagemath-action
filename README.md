# sagemath-action

GitHub Action to run SageMath.

## Inputs

Each input is provided as a key inside the `with` section of the action.

* `source_file`

  The SageMath file to be executed. This input is required. For example:
  ```yaml
  - uses wuan/sagemath-action@v1
    with:
      source_file: |
        input1.sagemath.sage
        input2.sagemath.sage
  ```
  You can also pass multiple files as a multi-line string to compile multiple documents. For example:
  ```yaml
  - uses wuan/sagemath-action@v1
    with:
      source_file: |
        input1.sagemath.sage
        input2.sagemath.sage
  ```

* `working_directory`

    The working directory for this action.


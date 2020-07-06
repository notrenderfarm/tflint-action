# Tflint GitHub Action

This action runs tflint on the specified directory

## Inputs

### `directory`

**Required** The directory where to run the action. Default `"terraform"`.

## Example usage

uses: actions/@notrenderfarm/tflint-action@v1
with:
  directory: 'terraform'


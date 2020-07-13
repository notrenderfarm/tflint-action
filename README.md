# Tflint GitHub Action

This action runs tflint on the specified directory

## Inputs

| Parameter | Description | Default | Required |
| --------- | ----------- | ------- | -------- |
| `directory` | The directory where to run the action | `"terraform"` | Yes |


## Example usage

```
uses: actions/@notrenderfarm/tflint-action@v1
with:
  directory: 'terraform'
```

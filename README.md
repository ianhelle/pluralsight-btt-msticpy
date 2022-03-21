# Pluralsight Blue Team Tools - Threat Intelligence with MSTICPy

This repository contains a Jupyter notebook and sample data
for the MSTICPy Blue Team Tools module.

In order to run the notebook you will need:
- A Python environment
- Jupyter Notebook, Jupyter Lab or VSCode installed (other notebook environments should also work)
- MSTICPy version 1.7.0 or later
  - the PowerShell code de-obfuscation functions are included in version 1.7.5 so these
    functions will not work with earlier versions. All of the other functionality is
    available in 1.7.0.

## Viewing the Notebook

You can view the notebook (without executing) directly in GitHub.
You may find that NBViewer gives a high fidelity rendering of the notebook.
You can try this here [Open the notebook in NBViewer]()

## Running the notebook in MyBinder

You can run the notebook in the MyBinder service. Please keep in mind a few things:
 
 - MyBinder is a community service provided free, so please be responsible with how much load you put on it.
 - MyBinder has a kernel timeout of a few minutes, so if you leave the notebook to grab a coffee
   the kernel may well have timed out by the time you return. You can simply restart it but be 
   aware that your progress in the notebook will have been lost.


## Threat Intelligence providers

One of the cells uses AlienVault OTX for threat intelligence look-ups. For this to work you will need
- an AlienVault OTX (free) account
- Have your OTX API key configured in your `msticpyconfig.yaml`

See [MSTICPy Threat Intelligence providers](https://msticpy.readthedocs.io/en/latest/data_acquisition/TIProviders.html)
for details on how to do this.

You can also use any of the other available providers:
- VirusTotal
- IBM XForce
- RiskIQ
- ...
 

## AntiVirus Warning

Both the sample data files and the data in the notebook will trigger AntiMalware programs.
Although there is no dangerous code in any of the files in the repo (unless you
decide to extract and re-purpose it), downloading it to your local machine may trigger
alerts from your AV. In many cases, the files will be quarantined by the AV engine.
If your notebook or data files mysteriously disappear please check this. You may
need to exclude the folder holding these files from AV real-time scanning.

## Contact

Please open an issue in this repo 
using System.Reflection;

namespace GherkinLens;

public static class GherkinParser
{
    public static void ReadAllFeaturesInAssembly()
    {
        var result = Assembly.LoadFile("/home/oskargeorgsson/repos/gherkin-lens/GherkinLens.Specifications/bin/Debug/net8.0/GherkinLens.Specifications.dll");

        var resourceNames = result.GetManifestResourceNames();
        var streams = result.GetManifestResourceStream(resourceNames.First());

        

    }
}
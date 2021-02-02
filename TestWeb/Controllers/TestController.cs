using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestWeb.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TestController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

        private readonly ILogger<TestController> _logger;

        public TestController(ILogger<TestController> logger)
        {
            _logger = logger;
            string abc = "ddddsfssvs";
        }

        [HttpGet("test")]
        public string Get([FromQuery] string key)
        {
            //_logger.LogWarning("dddd");
            return key;
        }

        [HttpGet("jenkins")]
        public string Jenkins([FromQuery] string key)
        {
            return key;
        }

        [HttpGet("abc")]
        public string Abc([FromQuery] string key)
        {
            return key;
        }
    }
}

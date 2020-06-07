using AutoFixture;
using FluentAssertions;
using Microsoft.AspNetCore.Mvc;
using Morsley.UK.Walking.Skeleton.API.Controllers.v1;
using Xunit;

namespace Morsley.UK.WalkingSkeleton.API.Tests.Unit
{
    public class UsersControllerUnitTests
    {
        private readonly Fixture _fixture;

        public UsersControllerUnitTests()
        {
            _fixture = new Fixture();
        }

        #region Unhappy Paths

        #endregion Unhappy Paths

        #region Happy Paths

        [Fact]
        public void GET_Greeting_Should_Return_Hello()
        {
            // Arrange...
            var sut = new ApiController();

            // Act...
            var response = sut.Get();

            // Assert...
            response.Should().NotBeNull();
            var result = response as OkObjectResult;
            result.Should().NotBeNull();
            string greeting = result.Value.ToString().Substring(0, 5);
            greeting.Should().Be("Hello");
        }

        #endregion Happy Paths
    }
}
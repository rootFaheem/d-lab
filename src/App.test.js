import React from "react";
import App from "./App";

test("renders learn react link", () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(/I was/i);
  expect(linkElement).toBeInTheDocument();
});

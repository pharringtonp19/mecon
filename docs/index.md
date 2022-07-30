<div>
    <span style="border:3px dashed purple; padding: 10px;
    border-radius: 10px;">
        A course where we build Microeconomic models 
    </span>
</div>

``` mermaid
flowchart LR
    A(Preferences/Income) -->  C(Demand);
    C --> E(Market Equilibrium);
    D(Supply) --> E
    M(Expectations) -->C;
    M --> D;
    Z(Taxes/Subsidies) --> C;
    Z --> D;
    A --> D;
    E --> Q(Quantity);
    E --> R(Prices);
```
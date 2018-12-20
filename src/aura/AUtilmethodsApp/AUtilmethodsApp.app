<aura:application extends="force:slds">
     <div class="spinner" aura:id="spinner">
      <Lightning:spinner alternativeText="Loading" />
    </div>
    <Lightning:button label="Toggle" variant="brand" onclick="{! c.handleClick }" class="btn"/>
</aura:application>
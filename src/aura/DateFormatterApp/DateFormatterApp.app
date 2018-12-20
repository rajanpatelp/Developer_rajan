<aura:application extends="force:slds">
    <aura:attribute name="DateTimeInput" type="DateTime"/>
    <aura:attribute name="output" type="DateTime"/>
    
    <Lightning:input name="date"  type="datetime" label="Input Date" value="{!v.DateTimeInput}"/>
    <Lightning:select aura:id="select" name="select" label="Select a pie" onchange="{!c.onChange}">
    	<option value="">choose one...</option>
        <option value="YYYY MM DD">YYYY MM DD format</option>
        <option value="MMMM DD YYYY, hh:mm:ss a">MMMM DD YYYY, hh:mm:ss a format</option>
        <option value="yyyy-MM-dd HH:mm:ss.SSS">yyyy-MM-dd HH:mm:ss.SSS format</option>
    </Lightning:select>
    
    <p>outputDate {!v.output}</p>
</aura:application>
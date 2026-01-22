function onCreate()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'techne_notes_new')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'techne_notes_new')
    end
end
end

function onUpdatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'techne_notes_new')
    if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'techne_notes_new')
    end
end
end
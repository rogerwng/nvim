return
{
    -- figure
    s({trig="\\fig", snippetType="snippet", dscr="A basic figure environment"},
        fmta(
            [[
            \begin{figure}
            \centering
            \includegraphics[width=0.9\linewidth]{<>}
            \caption{
                \textbf{<>}
                <>
                }
            \label{fig:<>}
            \end{figure}

            ]],
            {
                i(1, "filename"),
                i(2, "captionBold"),
                i(3, "captionText"),
                i(4, "figureLabel"),
            }
        )
    ),

    -- rep() example, setting up enviornment
    s({trig="\\begin", snippetType="snippet", dscr="Begin an end an arbitrary environment"},
        fmta(
            [[
            \begin{<>}
                <>
            \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1),
            }
        )
    ),

    -- section and subsection headers
    s({trig="\\sec", snippetType="autosnippet", dscr="Begin a section header"},
        fmta(
            [[
            \section{<>}
            ]],
            {i(1),}
        )
    ),
    s({trig="\\subsec", snippetType="autosnippet", dscr="Begin a subsection header"},
        fmta(
            [[
            \subsection{<>}
            ]],
            {i(1),}
        )
    ),
}
            


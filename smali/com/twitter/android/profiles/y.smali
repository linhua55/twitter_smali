.class public Lcom/twitter/android/profiles/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/twitter/ui/widget/TwitterButton;

.field private final b:Lcom/twitter/ui/widget/TwitterButton;

.field private final c:Lcom/twitter/ui/widget/TwitterButton;

.field private final d:Lcom/twitter/ui/widget/TwitterButton;

.field private final e:Lcom/twitter/ui/widget/TwitterButton;

.field private final f:Lcom/twitter/ui/widget/TwitterButton;

.field private final g:Lcom/twitter/ui/widget/TwitterButton;

.field private final h:Lcom/twitter/ui/widget/TwitterButton;

.field private final i:Lcom/twitter/ui/widget/TwitterButton;

.field private final j:Lcom/twitter/ui/widget/TwitterButton;

.field private final k:Lcom/twitter/ui/widget/TwitterButton;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Z

.field private final n:Z

.field private final o:Landroid/content/Context;

.field private final p:Lcom/twitter/android/profiles/z;

.field private final q:Lcom/twitter/model/core/TwitterUser;

.field private r:Lcom/twitter/model/core/TwitterUser;

.field private s:Z

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/profiles/z;Landroid/widget/LinearLayout;Lcom/twitter/model/core/TwitterUser;Z)V
    .locals 7

    .prologue
    .line 66
    invoke-static {p1}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/profiles/y;-><init>(Landroid/content/Context;Lcom/twitter/android/profiles/z;Landroid/widget/LinearLayout;Lcom/twitter/model/core/TwitterUser;ZZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/profiles/z;Landroid/widget/LinearLayout;Lcom/twitter/model/core/TwitterUser;ZZ)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcba;->a()Z

    move-result v1

    .line 72
    iput-boolean p5, p0, Lcom/twitter/android/profiles/y;->m:Z

    .line 73
    iput-object p4, p0, Lcom/twitter/android/profiles/y;->q:Lcom/twitter/model/core/TwitterUser;

    .line 74
    iput-object p1, p0, Lcom/twitter/android/profiles/y;->o:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/twitter/android/profiles/y;->p:Lcom/twitter/android/profiles/z;

    .line 76
    iput-boolean p6, p0, Lcom/twitter/android/profiles/y;->n:Z

    .line 78
    const v0, 0x7f130631

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    .line 79
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f13062c

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f13062d

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->c:Lcom/twitter/ui/widget/TwitterButton;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->c:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f13062e

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->d:Lcom/twitter/ui/widget/TwitterButton;

    .line 88
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f13062f

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->e:Lcom/twitter/ui/widget/TwitterButton;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f130627

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    .line 94
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f130628

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->g:Lcom/twitter/ui/widget/TwitterButton;

    .line 97
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    if-eqz v1, :cond_0

    .line 100
    const v0, 0x7f13062a

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    .line 101
    const v0, 0x7f13062b

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f130626

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->j:Lcom/twitter/ui/widget/TwitterButton;

    .line 110
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->j:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f130623

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->k:Lcom/twitter/ui/widget/TwitterButton;

    .line 113
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->k:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object p3, p0, Lcom/twitter/android/profiles/y;->l:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->q:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/profiles/y;->q:Lcom/twitter/model/core/TwitterUser;

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->w:I

    :goto_1
    iput v0, p0, Lcom/twitter/android/profiles/y;->t:I

    .line 117
    return-void

    .line 103
    :cond_0
    const v0, 0x7f130624

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    .line 104
    const v0, 0x7f130625

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(I)I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/twitter/android/profiles/y;->m:Z

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const v0, 0x7f0a091a

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {p1}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const v0, 0x7f0a0918

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {p1}, Lcom/twitter/model/core/p;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    const v0, 0x7f0a05f8

    goto :goto_0

    .line 204
    :cond_3
    const v0, 0x7f0a03b7

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->g:Lcom/twitter/ui/widget/TwitterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public a(I)V
    .locals 7

    .prologue
    const v6, 0x7f0a0918

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 127
    iget-boolean v0, p0, Lcom/twitter/android/profiles/y;->s:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/profiles/y;->d(I)I

    move-result v0

    .line 132
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v2}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 133
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->c:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v2}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v2}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 136
    if-lez v0, :cond_1

    .line 137
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->c:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 141
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 144
    const v3, 0x7f0a03b7

    if-ne v0, v3, :cond_5

    .line 145
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 155
    :cond_1
    :goto_1
    iget v3, p0, Lcom/twitter/android/profiles/y;->t:I

    invoke-virtual {p0, v3}, Lcom/twitter/android/profiles/y;->c(I)V

    .line 156
    iget-boolean v3, p0, Lcom/twitter/android/profiles/y;->m:Z

    if-eqz v3, :cond_8

    .line 157
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 172
    :cond_2
    :goto_2
    invoke-static {}, Lcba;->a()Z

    move-result v0

    .line 173
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->o:Landroid/content/Context;

    iget-object v5, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v6, p0, Lcom/twitter/android/profiles/y;->m:Z

    invoke-static {v3, v5, p1, v6}, Lcom/twitter/android/profiles/as;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;IZ)Z

    move-result v5

    .line 174
    if-eqz v0, :cond_d

    .line 175
    invoke-static {p1}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-static {p1}, Lcom/twitter/model/core/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    .line 177
    :goto_3
    iget-object v6, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v5, :cond_b

    if-nez v0, :cond_b

    move v3, v1

    :goto_4
    invoke-virtual {v6, v3}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 179
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 186
    :goto_6
    iget-boolean v0, p0, Lcom/twitter/android/profiles/y;->u:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v3, p0, Lcom/twitter/android/profiles/y;->m:Z

    .line 187
    invoke-static {v0, p1, v3}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/core/TwitterUser;IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    :goto_7
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->j:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v2, :cond_4

    move v4, v1

    :cond_4
    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 146
    :cond_5
    const v3, 0x7f0a091a

    if-ne v0, v3, :cond_6

    .line 147
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->c:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_6
    const v3, 0x7f0a05f8

    if-ne v0, v3, :cond_7

    .line 149
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_7
    if-ne v0, v6, :cond_1

    .line 151
    iget-object v3, p0, Lcom/twitter/android/profiles/y;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v3, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_8
    const-string/jumbo v3, "legacy_deciders_alerts_activation_enabled"

    .line 161
    invoke-static {v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 162
    iget-object v5, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v5, v5, Lcom/twitter/model/core/TwitterUser;->p:Z

    if-eqz v5, :cond_2

    if-eq v0, v6, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/profiles/y;->n:Z

    if-eqz v0, :cond_2

    .line 165
    invoke-static {p1}, Lcom/twitter/model/core/p;->l(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/twitter/android/profiles/y;->b()V

    goto/16 :goto_2

    .line 168
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/profiles/y;->a()V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 176
    goto :goto_3

    :cond_b
    move v3, v4

    .line 177
    goto :goto_4

    :cond_c
    move v0, v4

    .line 179
    goto :goto_5

    .line 182
    :cond_d
    invoke-static {p1}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v3

    .line 183
    iget-object v6, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v5, :cond_e

    if-nez v3, :cond_e

    move v0, v1

    :goto_8
    invoke-virtual {v6, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 184
    iget-object v6, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v5, :cond_f

    if-eqz v3, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {v6, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    move v0, v4

    .line 183
    goto :goto_8

    :cond_f
    move v0, v4

    .line 184
    goto :goto_9

    :cond_10
    move v2, v1

    .line 187
    goto :goto_7
.end method

.method public a(Lcom/twitter/model/ads/e;Z)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->k:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/twitter/android/profiles/y;->k:Lcom/twitter/ui/widget/TwitterButton;

    iget-object v0, p0, Lcom/twitter/android/profiles/y;->q:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v2, p1, p2}, Lcom/twitter/android/ads/c;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/ads/e;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 216
    :cond_0
    return-void

    .line 211
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/android/profiles/y;->r:Lcom/twitter/model/core/TwitterUser;

    .line 121
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->f:Lcom/twitter/ui/widget/TwitterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->g:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/y;->s:Z

    .line 235
    invoke-virtual {p0, p1}, Lcom/twitter/android/profiles/y;->a(I)V

    .line 236
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/profiles/y;->s:Z

    .line 230
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 239
    iget v0, p0, Lcom/twitter/android/profiles/y;->t:I

    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lcom/twitter/android/profiles/y;->t:I

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/profiles/y;->m:Z

    if-eqz v0, :cond_3

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/twitter/android/profilecompletionmodule/u;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a035a

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()Lcom/twitter/ui/widget/TwitterButton;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->k:Lcom/twitter/ui/widget/TwitterButton;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/profiles/y;->u:Z

    .line 274
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->j:Lcom/twitter/ui/widget/TwitterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/profiles/y;->u:Z

    .line 279
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->h:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profiles/y;->i:Lcom/twitter/ui/widget/TwitterButton;

    .line 283
    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/android/profiles/y;->p:Lcom/twitter/android/profiles/z;

    invoke-interface {v0, p1}, Lcom/twitter/android/profiles/z;->onButtonBarItemClick(Landroid/view/View;)V

    .line 266
    return-void
.end method

.class public Lcom/twitter/android/av/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/twitter/model/core/Tweet;

.field private final b:Lcom/twitter/android/widget/EngagementActionBar;

.field private final c:Lcom/twitter/android/av/ak;

.field private final d:Lcom/twitter/library/client/Session;

.field private e:Landroid/content/Context;

.field private final f:Lcom/twitter/android/widget/ToggleImageButton;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Lcom/twitter/android/av/aj;

.field private final j:Lcom/twitter/android/av/am;

.field private final k:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/support/v4/app/FragmentActivity;

.field private m:Lcav;

.field private final n:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Landroid/content/Context;Lcom/twitter/android/av/ak;Lcom/twitter/library/client/Session;Lcom/twitter/util/x;Lcom/twitter/android/av/aj;Lcom/twitter/android/av/am;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/android/widget/EngagementActionBar;",
            "Landroid/content/Context;",
            "Lcom/twitter/android/av/ak;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;",
            "Lcom/twitter/android/av/aj;",
            "Lcom/twitter/android/av/am;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/twitter/android/av/ai;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/ai;-><init>(Lcom/twitter/android/av/ah;)V

    iput-object v0, p0, Lcom/twitter/android/av/ah;->n:Lcom/twitter/util/y;

    .line 109
    iput-object p1, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    .line 110
    iput-object p2, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    .line 111
    iput-object p6, p0, Lcom/twitter/android/av/ah;->k:Lcom/twitter/util/x;

    .line 112
    iput-object p4, p0, Lcom/twitter/android/av/ah;->c:Lcom/twitter/android/av/ak;

    .line 113
    iget-object v0, p0, Lcom/twitter/android/av/ah;->k:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->n:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 114
    iput-object p7, p0, Lcom/twitter/android/av/ah;->i:Lcom/twitter/android/av/aj;

    .line 115
    iput-object p8, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    .line 116
    iput-object p3, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    .line 117
    iput-object p5, p0, Lcom/twitter/android/av/ah;->d:Lcom/twitter/library/client/Session;

    .line 118
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    const v1, 0x7f13002e

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/av/ah;->g:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/EngagementActionBar;->getFavoriteButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/av/ah;->f:Lcom/twitter/android/widget/ToggleImageButton;

    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    const v1, 0x7f130062

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/av/ah;->h:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/av/ah;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcom/twitter/util/x;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcav;)V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/av/ah;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcom/twitter/util/x;)V

    .line 93
    iput-object p4, p0, Lcom/twitter/android/av/ah;->m:Lcav;

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcom/twitter/util/x;)V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/android/widget/EngagementActionBar;",
            "Lcom/twitter/android/av/ak;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p2}, Lcom/twitter/android/widget/EngagementActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v5

    new-instance v7, Lcom/twitter/android/av/aj;

    invoke-direct {v7, p4, p3}, Lcom/twitter/android/av/aj;-><init>(Lcom/twitter/util/x;Lcom/twitter/android/av/ak;)V

    new-instance v8, Lcom/twitter/android/av/am;

    invoke-direct {v8}, Lcom/twitter/android/av/am;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/av/ah;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Landroid/content/Context;Lcom/twitter/android/av/ak;Lcom/twitter/library/client/Session;Lcom/twitter/util/x;Lcom/twitter/android/av/aj;Lcom/twitter/android/av/am;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .prologue
    const v1, 0x7f120170

    .line 203
    iget-object v0, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    iget-object v0, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 205
    iget-object v3, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget v3, v3, Lcom/twitter/model/core/Tweet;->h:I

    .line 207
    iget-object v4, p0, Lcom/twitter/android/av/ah;->g:Landroid/widget/TextView;

    if-lez v0, :cond_1

    int-to-long v6, v0

    .line 208
    invoke-static {v2, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, p0, Lcom/twitter/android/av/ah;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1200d7

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v4, p0, Lcom/twitter/android/av/ah;->h:Landroid/widget/TextView;

    if-lez v3, :cond_3

    int-to-long v6, v3

    .line 212
    invoke-static {v2, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/twitter/android/av/ah;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget-boolean v3, v3, Lcom/twitter/model/core/Tweet;->c:Z

    if-eqz v3, :cond_0

    const v1, 0x7f1200d4

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    return-void

    .line 208
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    move v0, v1

    .line 209
    goto :goto_1

    .line 212
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    .line 125
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    .line 129
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/ah;->b(Lcom/twitter/model/core/Tweet;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/android/av/ah;->c:Lcom/twitter/android/av/ak;

    invoke-interface {v0, p1}, Lcom/twitter/android/av/ak;->a(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method protected b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    .line 138
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 139
    invoke-virtual {p0}, Lcom/twitter/android/av/ah;->a()V

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/ah;->d:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    const v1, 0x7f13005f

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/twitter/android/av/ah;->i:Lcom/twitter/android/av/aj;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/av/ah;->d:Lcom/twitter/library/client/Session;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/av/aj;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V

    .line 164
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/av/ah;->b:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/EngagementActionBar;->a()V

    .line 165
    invoke-virtual {p0}, Lcom/twitter/android/av/ah;->a()V

    goto :goto_0

    .line 156
    :cond_2
    const v1, 0x7f13002d

    if-ne v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/twitter/android/av/ah;->i:Lcom/twitter/android/av/aj;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/av/ah;->d:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/av/ah;->m:Lcav;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/aj;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Lcav;Landroid/view/View;)V

    goto :goto_1

    .line 158
    :cond_3
    const v1, 0x7f130061

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/twitter/android/av/ah;->i:Lcom/twitter/android/av/aj;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/aj;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    goto :goto_1

    .line 160
    :cond_4
    const v1, 0x7f130139

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/twitter/android/av/ah;->i:Lcom/twitter/android/av/aj;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/aj;->b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/am;->c(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/twitter/android/av/ah;->f:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ToggleImageButton;->a()V

    goto :goto_0

    .line 169
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/am;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/am;->b(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/am;->d(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :sswitch_4
    iget-object v0, p0, Lcom/twitter/android/av/ah;->j:Lcom/twitter/android/av/am;

    iget-object v1, p0, Lcom/twitter/android/av/ah;->l:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/av/ah;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/am;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 189
    const-string/jumbo v0, "share"

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x7f13002d -> :sswitch_0
        0x7f13005f -> :sswitch_1
        0x7f130061 -> :sswitch_2
        0x7f130138 -> :sswitch_3
        0x7f130139 -> :sswitch_4
    .end sparse-switch
.end method

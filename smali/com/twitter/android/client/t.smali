.class public Lcom/twitter/android/client/t;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/core/TwitterUser;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/FragmentManager;

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/util/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/t;->e:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    .line 80
    iput-object p3, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/t;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/client/t;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const v1, 0x7f1307df

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d021f

    .line 162
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0a0303

    .line 163
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "dm_tooltip"

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 166
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/client/t;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/android/client/t;->b()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/twitter/android/util/t;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 242
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    .line 275
    :goto_1
    if-eqz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/twitter/android/client/t;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    return-object v0

    .line 242
    :sswitch_0
    const-string/jumbo v1, "highlights_tooltip_overflow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "news_tooltip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "news_tooltip_in"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "dm_tooltip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "connect_tooltip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v8

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "connect_tooltip_overflow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "connect_tooltip_drawe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 244
    :pswitch_0
    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const-string/jumbo v2, "highlights_overflow_fatigue"

    iget-object v6, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    goto :goto_1

    .line 249
    :pswitch_1
    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const-string/jumbo v2, "news_fatigue"

    iget-object v6, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    goto :goto_1

    .line 254
    :pswitch_2
    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const-string/jumbo v2, "news_fatigue_in"

    const-wide/32 v4, 0x14997000

    iget-object v3, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    goto/16 :goto_1

    .line 259
    :pswitch_3
    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const-string/jumbo v2, "dm_fatigue"

    iget-object v6, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    goto/16 :goto_1

    .line 266
    :pswitch_4
    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const-string/jumbo v2, "connect_fatigue"

    iget-object v6, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    goto/16 :goto_1

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        -0x299115b3 -> :sswitch_3
        -0x3f55942 -> :sswitch_0
        0x123e0373 -> :sswitch_5
        0x27e565ae -> :sswitch_4
        0x59d4c9d0 -> :sswitch_6
        0x7000d7cd -> :sswitch_2
        0x7e0c7e97 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/t;->d:Z

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const v6, 0x7f1306ff

    const v5, 0x7f130052

    const v4, 0x7f0a05fc

    const v3, 0x7f0d021f

    const/4 v1, 0x1

    .line 93
    iget-boolean v0, p0, Lcom/twitter/android/client/t;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lcom/twitter/android/client/t;->d:Z

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_2
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->c(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    goto :goto_0

    .line 99
    :sswitch_0
    const-string/jumbo v2, "highlights_tooltip_overflow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "news_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "news_tooltip_in"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "connect_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "connect_tooltip_overflow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "connect_tooltip_drawe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f0a0404

    .line 103
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "highlights_tooltip_overflow"

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto :goto_2

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f0a05a0

    .line 111
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "news_tooltip"

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto/16 :goto_2

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f0a05a1

    .line 119
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "news_tooltip_in"

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto/16 :goto_2

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const v2, 0x7f1307dc

    invoke-static {v0, v2}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "connect_tooltip"

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto/16 :goto_2

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "connect_tooltip_overflow"

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto/16 :goto_2

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    const v2, 0x7f130028

    invoke-static {v0, v2}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/t;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "connect_tooltip_drawe"

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    goto/16 :goto_2

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f55942 -> :sswitch_0
        0x123e0373 -> :sswitch_4
        0x27e565ae -> :sswitch_3
        0x59d4c9d0 -> :sswitch_5
        0x7000d7cd -> :sswitch_2
        0x7e0c7e97 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid tooltip name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :sswitch_0
    const-string/jumbo v3, "highlights_tooltip_overflow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "news_tooltip_in"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "news_tooltip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "dm_tooltip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "connect_tooltip"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "connect_tooltip_overflow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "connect_tooltip_drawe"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->c(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 180
    :goto_1
    new-instance v3, Lcom/twitter/library/client/l;

    iget-object v4, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v5, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {v3, v4, v6, v7}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 181
    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/twitter/android/highlights/g;->a(Lcom/twitter/library/client/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    :cond_2
    :goto_2
    return v2

    :cond_3
    move v0, v1

    .line 179
    goto :goto_1

    :cond_4
    move v2, v1

    .line 181
    goto :goto_2

    .line 185
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->c(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    .line 187
    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 188
    invoke-static {v4, v5}, Lcom/twitter/android/news/n;->b(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/client/t;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 189
    invoke-static {v4, v5}, Lcfl;->g(J)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 186
    goto :goto_3

    .line 192
    :pswitch_2
    const-string/jumbo v0, "dm_share_tweet_new_user_tooltip_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 193
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->c(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    invoke-static {v2}, Lbnx;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 195
    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 196
    iget-object v0, p0, Lcom/twitter/android/client/t;->b:Landroid/content/Context;

    check-cast v0, Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->h()Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    .line 197
    instance-of v2, v0, Lcom/twitter/android/HomeTimelineFragment;

    if-eqz v2, :cond_8

    .line 198
    new-instance v2, Lcom/twitter/android/client/u;

    check-cast v0, Lcom/twitter/android/HomeTimelineFragment;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/client/u;-><init>(Lcom/twitter/android/client/t;Lcom/twitter/android/HomeTimelineFragment;)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 199
    invoke-virtual {v2, v0}, Lcom/twitter/android/client/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    move v2, v1

    .line 203
    goto :goto_2

    .line 208
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/t;->c(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move v0, v2

    .line 210
    :goto_4
    if-eqz v0, :cond_a

    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    .line 209
    goto :goto_4

    .line 176
    :sswitch_data_0
    .sparse-switch
        -0x299115b3 -> :sswitch_3
        -0x3f55942 -> :sswitch_0
        0x123e0373 -> :sswitch_5
        0x27e565ae -> :sswitch_4
        0x59d4c9d0 -> :sswitch_6
        0x7000d7cd -> :sswitch_1
        0x7e0c7e97 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method c(Ljava/lang/String;)Lcom/twitter/android/util/t;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/android/client/t;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/t;

    .line 227
    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/twitter/android/client/t;->d(Ljava/lang/String;)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 230
    :cond_0
    return-object v0
.end method

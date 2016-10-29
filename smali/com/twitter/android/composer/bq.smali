.class public Lcom/twitter/android/composer/bq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/ui/widget/af;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/twitter/android/composer/bq;


# instance fields
.field private final c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/util/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/twitter/ui/widget/Tooltip;

.field private final e:Landroid/content/Context;

.field private f:Lcom/twitter/ui/widget/af;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "record_video_tooltip"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "found_media_tooltip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "stickers_composer_tooltip"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/composer/bq;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/composer/bq;->c:Landroid/util/LongSparseArray;

    .line 56
    iput-object p1, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)Lcom/twitter/android/composer/bq;
    .locals 5

    .prologue
    .line 72
    sget-object v0, Lcom/twitter/android/composer/bq;->b:Lcom/twitter/android/composer/bq;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/twitter/android/composer/bq;->b:Lcom/twitter/android/composer/bq;

    move-object v2, v0

    .line 78
    :goto_0
    if-eqz p2, :cond_0

    .line 79
    const-string/jumbo v0, "composer_tooltip_suppress_in_session"

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/twitter/android/composer/bq;->g:Z

    .line 82
    sget-object v3, Lcom/twitter/android/composer/bq;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 83
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/Tooltip;

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/Tooltip;->a(Lcom/twitter/ui/widget/af;)V

    .line 86
    iput-object v0, v2, Lcom/twitter/android/composer/bq;->d:Lcom/twitter/ui/widget/Tooltip;

    .line 91
    :cond_0
    return-object v2

    .line 75
    :cond_1
    new-instance v0, Lcom/twitter/android/composer/bq;

    invoke-direct {v0, p0}, Lcom/twitter/android/composer/bq;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    goto :goto_0

    .line 82
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private c()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/util/t;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 231
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 233
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/twitter/android/composer/bq;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 235
    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-object v0

    .line 239
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 240
    const-string/jumbo v9, "record_video_tooltip"

    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    const-string/jumbo v2, "record_video_tooltip"

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v0, "found_media_tooltip"

    iget-object v1, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    const-string/jumbo v2, "found_media_tooltip"

    .line 245
    invoke-static {v1, v2, v6, v7}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v1

    .line 243
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v0, "stickers_composer_tooltip"

    iget-object v1, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    const-string/jumbo v2, "stickers_composer_tooltip"

    .line 248
    invoke-static {v1, v2, v6, v7}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v1

    .line 246
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v9, "found_media_umf_tooltip"

    new-instance v0, Lcom/twitter/android/util/t;

    iget-object v1, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    const-string/jumbo v2, "found_media_umf_tooltip"

    const v3, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/twitter/android/composer/bq;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v8

    .line 253
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "composer_tooltip_suppress_in_session"

    iget-boolean v1, p0, Lcom/twitter/android/composer/bq;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public a(Lcom/twitter/ui/widget/Tooltip;I)V
    .locals 1

    .prologue
    .line 258
    packed-switch p2, :pswitch_data_0

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/composer/bq;->f:Lcom/twitter/ui/widget/af;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/twitter/android/composer/bq;->f:Lcom/twitter/ui/widget/af;

    invoke-interface {v0, p1, p2}, Lcom/twitter/ui/widget/af;->a(Lcom/twitter/ui/widget/Tooltip;I)V

    .line 274
    :cond_0
    return-void

    .line 260
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/ui/widget/Tooltip;->a(Z)V

    goto :goto_0

    .line 264
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/composer/bq;->d:Lcom/twitter/ui/widget/Tooltip;

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/twitter/ui/widget/af;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/twitter/android/composer/bq;->f:Lcom/twitter/ui/widget/af;

    .line 100
    return-void
.end method

.method a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 4

    .prologue
    const v0, 0x7f0d0398

    .line 149
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_1
    return-void

    .line 149
    :sswitch_0
    const-string/jumbo v2, "record_video_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "found_media_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "found_media_umf_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "stickers_composer_tooltip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 151
    :pswitch_0
    const v2, 0x7f0a00fc

    .line 152
    const v1, 0x7f13028a

    .line 179
    :goto_2
    iget-object v3, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 180
    invoke-static {v3, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f13026e

    .line 183
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p2, p1}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/bq;->d:Lcom/twitter/ui/widget/Tooltip;

    .line 186
    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/bq;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :pswitch_1
    const v2, 0x7f0a03d4

    .line 159
    const v1, 0x7f13028b

    .line 161
    goto :goto_2

    .line 164
    :pswitch_2
    const v2, 0x7f0a0887

    .line 165
    const v1, 0x7f130286

    .line 166
    const v0, 0x7f0d0308

    .line 167
    goto :goto_2

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        -0x24d3432f -> :sswitch_0
        0x1ecf222d -> :sswitch_3
        0x30ac0a3a -> :sswitch_2
        0x4b55e0ab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/composer/bq;->d:Lcom/twitter/ui/widget/Tooltip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 122
    iget-boolean v2, p0, Lcom/twitter/android/composer/bq;->g:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    const-string/jumbo v0, "record_video_tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Lcom/twitter/android/util/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/bq;->e:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :cond_2
    const-string/jumbo v0, "stickers_composer_tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-static {v1}, Lcbd;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/composer/bq;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/t;

    .line 136
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/bq;->g:Z

    .line 218
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/twitter/android/composer/bq;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/t;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 206
    :cond_0
    const-string/jumbo v0, "found_media_umf_tooltip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const-string/jumbo v0, "found_media_tooltip"

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/bq;->b(Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/bq;->b()V

    .line 211
    return-void
.end method

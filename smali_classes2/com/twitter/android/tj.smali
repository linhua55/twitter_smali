.class public Lcom/twitter/android/tj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static a:Lcom/twitter/android/tn;


# instance fields
.field private final b:Lciv;

.field private final c:Landroid/widget/ListView;

.field private d:I

.field private e:I

.field private final f:I

.field private g:Lcom/twitter/android/tp;

.field private final h:Lcom/twitter/app/common/list/TwitterListFragment;

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/list/TwitterListFragment;Lciv;Landroid/widget/ListView;IZ)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/twitter/android/tj;->b:Lciv;

    .line 82
    iput-object p3, p0, Lcom/twitter/android/tj;->c:Landroid/widget/ListView;

    .line 83
    iput p4, p0, Lcom/twitter/android/tj;->f:I

    .line 84
    iget-object v0, p0, Lcom/twitter/android/tj;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 85
    iput-object p1, p0, Lcom/twitter/android/tj;->h:Lcom/twitter/app/common/list/TwitterListFragment;

    .line 86
    iput-boolean p5, p0, Lcom/twitter/android/tj;->i:Z

    .line 87
    return-void
.end method

.method private static a(Ljava/util/Set;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->u:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0053

    .line 243
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0764

    .line 244
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a080f

    .line 245
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->r:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0929

    .line 246
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->q:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0658

    .line 247
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->v:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a022a

    .line 248
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->w:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0266

    .line 250
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->g:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a00c7

    .line 251
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->i:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a00c9

    .line 252
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->e:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a03b7

    .line 253
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->f:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a094c

    .line 254
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->k:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a091e

    .line 255
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->j:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a057b

    .line 256
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->m:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a0972

    .line 257
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->l:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a00af

    .line 258
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->t:Lcom/twitter/model/core/TweetActionType;

    const v2, 0x7f0a06e6

    .line 259
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->s:Lcom/twitter/model/core/TweetActionType;

    const-string/jumbo v2, "Debug"

    .line 260
    invoke-static {v1, v2}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 263
    new-instance v1, Lcom/twitter/android/tm;

    invoke-direct {v1, p0}, Lcom/twitter/android/tm;-><init>(Ljava/util/Set;)V

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 117
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 119
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 120
    iget-wide v6, p0, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 121
    :goto_0
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v3

    .line 122
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    .line 123
    invoke-static {p2}, Lcom/twitter/android/moments/ui/maker/cd;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;

    move-result-object v6

    .line 125
    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/twitter/android/moments/ui/maker/cd;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    sget-object v6, Lcom/twitter/model/core/TweetActionType;->u:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v6}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v6, p0, Lcom/twitter/model/core/Tweet;->B:Z

    if-nez v6, :cond_1

    if-eqz p5, :cond_1

    .line 129
    sget-object v6, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v6}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 131
    :cond_1
    invoke-static {p0, v4, v5}, Lciz;->b(Lcom/twitter/model/core/Tweet;J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    sget-object v6, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v6}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 134
    :cond_2
    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    .line 135
    invoke-virtual {p0, v2}, Lcom/twitter/model/core/Tweet;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 136
    sget-object v2, Lcom/twitter/model/core/TweetActionType;->r:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v2}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 144
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {p0, v4, v5}, Lciz;->a(Lcom/twitter/model/core/Tweet;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->g:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 147
    :cond_4
    invoke-static {p0}, Lciz;->i(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->i:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 150
    :cond_5
    if-nez v0, :cond_8

    .line 152
    if-nez p1, :cond_e

    .line 153
    iget v0, p0, Lcom/twitter/model/core/Tweet;->i:I

    .line 158
    :goto_2
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v1

    invoke-virtual {v1}, Lcbe;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    .line 161
    if-eqz v1, :cond_10

    .line 162
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->f:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 168
    :cond_6
    :goto_3
    invoke-static {p0}, Lcom/twitter/android/util/bc;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 170
    invoke-static {v0}, Lcom/twitter/model/core/p;->d(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 171
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->k:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 178
    :cond_7
    :goto_4
    invoke-static {v0}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 179
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->m:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 185
    :goto_5
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->t:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 189
    :cond_8
    if-eqz p6, :cond_9

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->s:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 193
    :cond_9
    invoke-virtual {v3}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 194
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 196
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lciv;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)Z

    .line 229
    :cond_a
    :goto_6
    return-void

    .line 120
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 138
    :cond_c
    sget-object v2, Lcom/twitter/model/core/TweetActionType;->q:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v2}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto/16 :goto_1

    .line 140
    :cond_d
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v2

    invoke-virtual {v2}, Lcbe;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    sget-object v2, Lcom/twitter/model/core/TweetActionType;->v:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v2}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 142
    sget-object v2, Lcom/twitter/model/core/TweetActionType;->w:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v2}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto/16 :goto_1

    .line 155
    :cond_e
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->a(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 156
    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 164
    :cond_10
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->e:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto/16 :goto_3

    .line 173
    :cond_11
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->j:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto/16 :goto_4

    .line 181
    :cond_12
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->l:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto :goto_5

    .line 199
    :cond_13
    invoke-static {p2}, Lcom/twitter/android/tj;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 202
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/twitter/android/tj;->a(Ljava/util/Set;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/twitter/android/tk;

    invoke-direct {v1}, Lcom/twitter/android/tk;-><init>()V

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v3

    .line 211
    new-instance v1, Lcom/twitter/android/tl;

    invoke-direct {v1}, Lcom/twitter/android/tl;-><init>()V

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v4

    .line 220
    sget-object v0, Lcom/twitter/android/tj;->a:Lcom/twitter/android/tn;

    if-eqz v0, :cond_14

    .line 221
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 222
    sget-object v0, Lcom/twitter/android/tj;->a:Lcom/twitter/android/tn;

    :goto_7
    move-object v1, p2

    move-object v2, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p1

    move-object v8, p6

    .line 226
    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/tn;->a(Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/util/List;Ljava/util/List;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)V

    goto :goto_6

    .line 224
    :cond_14
    new-instance v0, Lcom/twitter/android/tn;

    invoke-direct {v0}, Lcom/twitter/android/tn;-><init>()V

    goto :goto_7
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 103
    instance-of v0, p0, Lcom/twitter/app/common/util/s;

    if-eqz v0, :cond_0

    .line 104
    check-cast p0, Lcom/twitter/app/common/util/s;

    invoke-interface {p0}, Lcom/twitter/app/common/util/s;->l_()Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/twitter/android/tj;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    .line 274
    return-void
.end method

.method public a(Lcom/twitter/android/tp;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/twitter/android/tj;->g:Lcom/twitter/android/tp;

    .line 278
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/twitter/android/tj;->g:Lcom/twitter/android/tp;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/twitter/android/tj;->g:Lcom/twitter/android/tp;

    invoke-interface {v0, p1}, Lcom/twitter/android/tp;->b(Landroid/view/View;)Lcom/twitter/android/vy;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/twitter/android/vy;->c:Z

    if-nez v1, :cond_0

    .line 289
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/tj;->a(Lcom/twitter/android/vy;Ljava/lang/String;)Z

    move-result v0

    .line 302
    :goto_0
    return v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 294
    instance-of v1, v0, Lcom/twitter/android/vy;

    if-eqz v1, :cond_1

    .line 295
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v1

    invoke-virtual {v1}, Lcbe;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    check-cast v0, Lcom/twitter/android/vy;

    .line 297
    const v1, 0x7f130083

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 298
    iget-boolean v2, v0, Lcom/twitter/android/vy;->c:Z

    if-nez v2, :cond_1

    .line 299
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/tj;->a(Lcom/twitter/android/vy;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/vy;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/tj;->h:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p1, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/library/widget/TweetView;

    .line 92
    const v0, 0x7f13006e

    .line 93
    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/TweetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "unspecified"

    .line 92
    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getFriendshipCache()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/tj;->h:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v2}, Lcom/twitter/app/common/list/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/tj;->b:Lciv;

    iget-boolean v5, p0, Lcom/twitter/android/tj;->i:Z

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/tj;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p2}, Lcom/twitter/android/tj;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 310
    packed-switch v0, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 312
    :pswitch_1
    iput v2, p0, Lcom/twitter/android/tj;->d:I

    .line 313
    iput v1, p0, Lcom/twitter/android/tj;->e:I

    goto :goto_0

    .line 317
    :pswitch_2
    iget v0, p0, Lcom/twitter/android/tj;->d:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/twitter/android/tj;->f:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/twitter/android/tj;->e:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/tj;->f:I

    if-le v0, v1, :cond_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/tj;->a()V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

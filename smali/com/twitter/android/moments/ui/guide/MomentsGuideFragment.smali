.class public Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/d;
.implements Lcom/twitter/android/moments/ui/guide/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;",
        "Lcom/twitter/android/moments/ui/guide/ah;",
        ">;",
        "Lcom/twitter/android/moments/ui/fullscreen/d;",
        "Lcom/twitter/android/moments/ui/guide/f;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/android/av/t;

.field private b:Lcom/twitter/android/moments/data/l;

.field private c:Lalo;

.field private d:Lahi;

.field private e:Lcom/twitter/android/moments/data/q;

.field private f:Lcom/twitter/android/moments/data/q;

.field private g:Lcom/twitter/android/moments/data/ae;

.field private h:Lcom/twitter/android/moments/data/bo;

.field private i:Lcom/twitter/android/moments/data/az;

.field private j:Lcom/twitter/android/moments/ui/guide/m;

.field private k:Lcom/twitter/android/moments/ui/guide/s;

.field private l:Lcom/twitter/android/moments/ui/guide/h;

.field private m:Lcom/twitter/android/moments/ui/guide/aa;

.field private n:Lama;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->s:J

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;)J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;)J
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->h:Lcom/twitter/android/moments/data/bo;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 138
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->g:Lcom/twitter/android/moments/data/ae;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->c:Lalo;

    invoke-virtual {v0}, Lalo;->b()V

    .line 140
    return-void
.end method

.method private n()V
    .locals 18

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v12

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 146
    invoke-static {v3, v12, v13}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v8

    .line 147
    invoke-static {v3}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v14

    .line 148
    new-instance v15, Lcet;

    invoke-direct {v15, v3, v8, v12, v13}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    .line 150
    new-instance v16, Lcom/twitter/android/moments/data/p;

    invoke-direct/range {v16 .. v16}, Lcom/twitter/android/moments/data/p;-><init>()V

    .line 151
    new-instance v4, Lcom/twitter/android/moments/ui/guide/ao;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/twitter/android/moments/ui/guide/ao;-><init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;Landroid/app/Activity;)V

    .line 163
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->t:Z

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/guide/at;->c()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-lez v2, :cond_0

    .line 166
    new-instance v2, Lbqj;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/moments/ui/guide/at;->c()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lbqj;-><init>(J)V

    move-object v11, v2

    .line 181
    :goto_0
    new-instance v2, Lcom/twitter/android/moments/data/s;

    .line 182
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    invoke-direct {v2, v3, v5, v14, v15}, Lcom/twitter/android/moments/data/s;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lcet;)V

    .line 183
    new-instance v5, Lcom/twitter/android/moments/data/ae;

    new-instance v6, Lcom/twitter/android/moments/data/d;

    invoke-direct {v6, v4}, Lcom/twitter/android/moments/data/d;-><init>(Lcom/twitter/util/object/i;)V

    invoke-direct {v5, v12, v13, v6, v2}, Lcom/twitter/android/moments/data/ae;-><init>(JLcom/twitter/android/moments/data/d;Lcom/twitter/android/moments/data/s;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->g:Lcom/twitter/android/moments/data/ae;

    .line 185
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v9

    .line 186
    new-instance v2, Lahi;

    .line 187
    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-interface {v11}, Lbqa;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lahi;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    .line 188
    new-instance v2, Lbqf;

    invoke-direct {v2, v3, v9}, Lbqf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 190
    invoke-static {v2}, Lcom/twitter/android/moments/data/az;->a(Lbqf;)Lcom/twitter/android/moments/data/az;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->i:Lcom/twitter/android/moments/data/az;

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->i:Lcom/twitter/android/moments/data/az;

    invoke-static {v4, v2, v8}, Lcom/twitter/android/moments/data/bp;->a(Lcom/twitter/android/moments/data/az;Lbqf;Lcom/twitter/library/provider/dm;)Lcom/twitter/android/moments/data/bp;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->h:Lcom/twitter/android/moments/data/bo;

    .line 193
    new-instance v2, Lcom/twitter/android/moments/data/q;

    invoke-direct {v2}, Lcom/twitter/android/moments/data/q;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->f:Lcom/twitter/android/moments/data/q;

    .line 194
    new-instance v2, Lcom/twitter/android/moments/data/q;

    invoke-direct {v2}, Lcom/twitter/android/moments/data/q;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->e:Lcom/twitter/android/moments/data/q;

    .line 195
    invoke-virtual {v9}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 196
    const-string/jumbo v2, "guide_post_follow_fatigue"

    .line 197
    invoke-static {v3, v2, v8, v9}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v5

    .line 198
    const-string/jumbo v2, "guide_follow_button_fatigue"

    .line 199
    invoke-static {v3, v2, v8, v9}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v6

    .line 200
    const-string/jumbo v2, "guide_thumbnail_fatigue"

    .line 201
    invoke-static {v3, v2, v8, v9}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v7

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->p:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 204
    const v9, 0x7f13003d

    .line 208
    :goto_1
    new-instance v2, Lcom/twitter/android/moments/ui/guide/s;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->o()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->p:Ljava/lang/String;

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/moments/ui/guide/s;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/twitter/android/util/t;Lcom/twitter/android/util/t;Lcom/twitter/android/util/t;ZILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->k:Lcom/twitter/android/moments/ui/guide/s;

    .line 211
    new-instance v2, Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->f:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->e:Lcom/twitter/android/moments/data/q;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/twitter/android/moments/ui/guide/h;-><init>(Landroid/content/Context;Lahi;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l:Lcom/twitter/android/moments/ui/guide/h;

    .line 214
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->ab:Lcom/twitter/library/client/bd;

    invoke-static {v3, v2, v15, v4, v11}, Lcom/twitter/android/moments/data/n;->a(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcet;Lcom/twitter/library/client/bd;Lbqa;)Lcom/twitter/android/moments/data/n;

    move-result-object v17

    .line 216
    new-instance v2, Lcom/twitter/android/moments/data/b;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    const-class v5, Lcom/twitter/android/moments/data/b;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Lcom/twitter/android/moments/data/p;->a(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v7

    const-wide/16 v9, 0x0

    move-object v5, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/moments/data/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/support/v4/app/LoaderManager;ILcet;J)V

    .line 219
    new-instance v3, Lalo;

    invoke-direct {v3, v2}, Lalo;-><init>(Lcom/twitter/android/moments/data/b;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->c:Lalo;

    .line 220
    new-instance v2, Lcom/twitter/android/moments/data/l;

    .line 222
    invoke-interface {v11}, Lbqa;->d()I

    move-result v3

    invoke-interface {v11}, Lbqa;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcet;->a(ILjava/lang/String;)Lcom/twitter/android/bt;

    move-result-object v3

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const-class v5, Lcom/twitter/android/moments/data/l;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lcom/twitter/android/moments/data/p;->a(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/twitter/android/moments/data/l;-><init>(Lcom/twitter/android/moments/data/n;Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->b:Lcom/twitter/android/moments/data/l;

    .line 224
    return-void

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Trying to display a user guide without userId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->u:Z

    if-eqz v2, :cond_3

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/guide/at;->k()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-lez v2, :cond_2

    .line 173
    new-instance v2, Lbqj;

    invoke-direct {v2, v12, v13}, Lbqj;-><init>(J)V

    move-object v11, v2

    goto/16 :goto_0

    .line 175
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Trying to add To moment guide without tweet id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_3
    new-instance v2, Lbqb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->o:Ljava/lang/String;

    invoke-direct {v2, v5}, Lbqb;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    goto/16 :goto_0

    .line 206
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->r:Z

    return v0
.end method

.method private t()Lcom/twitter/android/moments/ui/guide/m;
    .locals 23

    .prologue
    .line 254
    new-instance v4, Lcom/twitter/android/moments/ui/guide/af;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/twitter/android/moments/ui/guide/af;-><init>(Landroid/app/Activity;)V

    .line 259
    new-instance v3, Lcom/twitter/android/client/as;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aa:J

    invoke-direct {v3, v2, v6, v7}, Lcom/twitter/android/client/as;-><init>(Landroid/content/Context;J)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->u:Z

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/guide/at;->k()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/guide/at;->k()J

    move-result-wide v6

    .line 263
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v3

    .line 264
    new-instance v19, Lcom/twitter/android/moments/viewmodels/ao;

    new-instance v2, Lcom/twitter/android/moments/viewmodels/l;

    invoke-direct {v2}, Lcom/twitter/android/moments/viewmodels/l;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/twitter/android/moments/viewmodels/ao;-><init>(Lcom/twitter/android/moments/viewmodels/m;)V

    .line 265
    new-instance v5, Lcom/twitter/android/moments/ui/guide/g;

    new-instance v8, Lcom/twitter/android/moments/ui/maker/ay;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v9, 0x32

    invoke-direct {v8, v2, v9}, Lcom/twitter/android/moments/ui/maker/ay;-><init>(Landroid/app/Activity;I)V

    invoke-direct {v5, v8, v6, v7}, Lcom/twitter/android/moments/ui/guide/g;-><init>(Laui;J)V

    .line 269
    new-instance v8, Lcom/twitter/android/moments/ui/guide/aq;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6, v7}, Lcom/twitter/android/moments/ui/guide/aq;-><init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;J)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aB()Lcom/twitter/app/common/inject/b;

    move-result-object v2

    check-cast v2, Lafr;

    .line 281
    invoke-interface {v2}, Lafr;->c()Lcom/twitter/android/moments/data/maker/t;

    move-result-object v2

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/twitter/android/moments/ui/guide/a;->a(Landroid/app/Activity;J)Lcom/twitter/android/moments/ui/guide/a;

    move-result-object v6

    .line 284
    invoke-static {v5, v2, v8, v6}, Lcom/twitter/android/moments/ui/guide/al;->a(Lcom/twitter/android/moments/ui/guide/g;Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/ui/guide/a;)Lcom/twitter/android/moments/ui/guide/al;

    move-result-object v20

    move-object v2, v3

    .line 308
    :goto_0
    new-instance v21, Lalr;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v2, v4, v5}, Lalr;-><init>(Landroid/view/LayoutInflater;Lrx/o;Lauf;Lahi;)V

    .line 310
    new-instance v2, Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->b:Lcom/twitter/android/moments/data/l;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->m:Lcom/twitter/android/moments/ui/guide/aa;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v7

    iget-object v7, v7, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->k:Lcom/twitter/android/moments/ui/guide/s;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->f:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->e:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->g:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->h:Lcom/twitter/android/moments/data/bo;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->n:Lama;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a:Lcom/twitter/android/av/t;

    move-object/from16 v18, v0

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v22

    move-object/from16 v16, p0

    invoke-direct/range {v2 .. v22}, Lcom/twitter/android/moments/ui/guide/m;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/android/moments/data/l;Lcom/twitter/android/moments/ui/guide/aa;Landroid/widget/ListView;Lahi;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/ui/guide/s;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;ZLcom/twitter/android/moments/ui/guide/f;Lama;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/viewmodels/m;Lcom/twitter/android/moments/ui/guide/q;Lalp;Lcom/twitter/app/common/inject/o;)V

    .line 310
    return-object v2

    .line 287
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Trying to add To moment guide without tweet id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/guide/at;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->c:Lalo;

    invoke-virtual {v2}, Lalo;->a()Lrx/o;

    move-result-object v2

    new-instance v5, Lcom/twitter/android/moments/ui/guide/ar;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/twitter/android/moments/ui/guide/ar;-><init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;)V

    .line 291
    invoke-virtual {v2, v5}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v2

    .line 298
    new-instance v19, Lcom/twitter/android/moments/viewmodels/n;

    new-instance v5, Lcom/twitter/android/moments/viewmodels/l;

    invoke-direct {v5}, Lcom/twitter/android/moments/viewmodels/l;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/twitter/android/moments/viewmodels/n;-><init>(Lcom/twitter/android/moments/viewmodels/m;)V

    .line 300
    new-instance v20, Lcom/twitter/android/moments/ui/guide/r;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/twitter/android/moments/ui/guide/r;-><init>(Lcom/twitter/android/moments/ui/guide/h;Lauf;Lahi;Lcom/twitter/android/client/as;)V

    goto/16 :goto_0

    .line 303
    :cond_2
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v2

    .line 304
    new-instance v19, Lcom/twitter/android/moments/viewmodels/l;

    invoke-direct/range {v19 .. v19}, Lcom/twitter/android/moments/viewmodels/l;-><init>()V

    .line 305
    new-instance v20, Lcom/twitter/android/moments/ui/guide/r;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->d:Lahi;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/twitter/android/moments/ui/guide/r;-><init>(Lcom/twitter/android/moments/ui/guide/h;Lauf;Lahi;Lcom/twitter/android/client/as;)V

    goto/16 :goto_0
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->s:J

    .line 407
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->e()Z

    move-result v0

    return v0
.end method

.method private v()J
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->q:Z

    .line 352
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->b()V

    .line 353
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->a()V

    .line 354
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->i:Lcom/twitter/android/moments/data/az;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/az;->b()V

    .line 355
    return-void
.end method

.method protected a(JJ)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/m;->a(Z)V

    .line 320
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->m()V

    .line 321
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->n()V

    .line 322
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->t()Lcom/twitter/android/moments/ui/guide/m;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    .line 323
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->g()V

    .line 324
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 387
    const v0, 0x7f0400e7

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 388
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->t:Z

    if-eqz v0, :cond_0

    .line 389
    const v0, 0x7f0a0566

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->a(I)Lcom/twitter/app/common/list/aj;

    .line 390
    const v0, 0x7f0a0567

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->b(I)Lcom/twitter/app/common/list/aj;

    .line 392
    :cond_0
    return-void
.end method

.method public aY_()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lafn;->a()Lafp;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->a(Lcom/twitter/app/common/app/n;)Lafp;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lafp;->a()Lafr;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->q:Z

    return v0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->d()V

    .line 360
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->d()V

    .line 365
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->X:Lcom/twitter/android/av/s;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->X:Lcom/twitter/android/av/s;

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->a()V

    .line 368
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->e()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->q:Z

    .line 374
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->c()V

    .line 375
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->i:Lcom/twitter/android/moments/data/az;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/az;->a()V

    .line 376
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->u()Z

    .line 346
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->h()V

    .line 381
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->f()V

    .line 382
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->u()Z

    move-result v0

    return v0
.end method

.method public l()Lcom/twitter/android/moments/ui/guide/at;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/at;->a(Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 241
    new-instance v0, Lcom/twitter/android/moments/ui/guide/aa;

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/guide/aa;-><init>(Lcom/twitter/app/common/list/aa;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->m:Lcom/twitter/android/moments/ui/guide/aa;

    .line 242
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->m:Lcom/twitter/android/moments/ui/guide/aa;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ap;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/guide/ap;-><init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/aa;->a(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lama;->a(Landroid/content/Context;)Lama;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->n:Lama;

    .line 249
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->t()Lcom/twitter/android/moments/ui/guide/m;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    .line 250
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/at;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->o:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/at;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->r:Z

    .line 113
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/at;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->u:Z

    .line 114
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/at;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->t:Z

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/at;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->p:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/twitter/android/av/t;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/av/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a:Lcom/twitter/android/av/t;

    .line 117
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->n()V

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->j:Lcom/twitter/android/moments/ui/guide/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/m;->a(Z)V

    .line 132
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->m()V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a:Lcom/twitter/android/av/t;

    invoke-virtual {v0}, Lcom/twitter/android/av/t;->b()V

    .line 134
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->l()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v0

    return-object v0
.end method

.method protected z()Lcom/twitter/app/common/list/b;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/twitter/android/moments/ui/guide/as;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/guide/as;-><init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;)V

    return-object v0
.end method

.class public Lcom/twitter/android/moments/ui/fullscreen/ax;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/fc;

.field private final c:Landroid/support/v4/view/ViewPager;

.field private final d:Landroid/view/View;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

.field private final g:Lcom/twitter/android/moments/data/ae;

.field private final h:Ladw;

.field private final i:Laev;

.field private final j:Lcom/twitter/android/moments/data/z;

.field private final k:Lcom/twitter/android/moments/ui/fullscreen/er;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/moments/core/ui/widget/sectionpager/c;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/twitter/android/moments/ui/fullscreen/am;

.field private final n:Lcom/twitter/moments/core/ui/widget/capsule/b;

.field private final o:Lahd;

.field private final p:Lahh;

.field private final q:Lcom/twitter/android/moments/ui/fullscreen/f;

.field private final r:Lcom/twitter/model/moments/viewmodels/a;

.field private final s:Lcom/twitter/android/moments/ui/fullscreen/fu;

.field private t:Lcom/twitter/android/moments/ui/fullscreen/bc;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/fc;Lcet;Lcom/twitter/util/collection/ab;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/moments/data/p;Lcom/twitter/android/moments/ui/fullscreen/dm;Landroid/support/v4/view/ViewPager;Lcom/twitter/moments/core/ui/widget/sectionpager/e;Lcom/twitter/android/sn;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/fb;Lajl;Landroid/view/View;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/fn;Lajw;Laev;Lcom/twitter/app/common/util/t;Lcom/twitter/model/moments/viewmodels/a;Landroid/os/Bundle;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/fullscreen/aq;Laeo;Lcom/twitter/android/moments/ui/fullscreen/gg;)V
    .locals 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/ui/fullscreen/fc;",
            "Lcet;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/twitter/library/client/bk;",
            "Lcom/twitter/library/client/bd;",
            "Landroid/support/v4/app/LoaderManager;",
            "Lcom/twitter/android/moments/data/p;",
            "Lcom/twitter/android/moments/ui/fullscreen/dm;",
            "Landroid/support/v4/view/ViewPager;",
            "Lcom/twitter/moments/core/ui/widget/sectionpager/e;",
            "Lcom/twitter/android/sn;",
            "Lcom/twitter/android/moments/ui/b;",
            "Lcom/twitter/android/moments/ui/fullscreen/fb;",
            "Lajl;",
            "Landroid/view/View;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/cm;",
            "Lcom/twitter/android/moments/ui/fullscreen/fn;",
            "Lajw;",
            "Laev;",
            "Lcom/twitter/app/common/util/t;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Landroid/os/Bundle;",
            "Lcom/twitter/android/moments/data/bo;",
            "Lcom/twitter/android/moments/ui/fullscreen/aq;",
            "Laeo;",
            "Lcom/twitter/android/moments/ui/fullscreen/gg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 130
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->b:Lcom/twitter/android/moments/ui/fullscreen/fc;

    .line 131
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->c:Landroid/support/v4/view/ViewPager;

    .line 132
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->f:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    .line 133
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->d:Landroid/view/View;

    .line 134
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->e:Ljava/util/Set;

    .line 135
    move-object/from16 v0, p23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->i:Laev;

    .line 136
    move-object/from16 v0, p25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    .line 138
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 141
    new-instance v31, Lcom/twitter/android/moments/ui/fullscreen/m;

    move-object/from16 v0, v31

    move-object/from16 v1, p25

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/m;-><init>(Lcom/twitter/model/moments/viewmodels/p;)V

    .line 142
    new-instance v62, Lcom/twitter/android/moments/ui/fullscreen/ff;

    move-object/from16 v0, v62

    move-object/from16 v1, p22

    move-object/from16 v2, v31

    move-object/from16 v3, p25

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/ff;-><init>(Lajw;Lcom/twitter/android/moments/ui/fullscreen/m;Lcom/twitter/model/moments/viewmodels/p;)V

    .line 144
    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v6

    iget-wide v0, v6, Lcom/twitter/model/moments/ad;->b:J

    move-wide/from16 v20, v0

    .line 145
    invoke-virtual/range {p6 .. p6}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 146
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v6

    .line 147
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/ay;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/twitter/android/moments/ui/fullscreen/ay;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V

    .line 157
    new-instance v10, Lcom/twitter/android/moments/data/s;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/twitter/android/moments/data/s;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lcet;)V

    .line 159
    new-instance v11, Lcom/twitter/android/moments/data/ae;

    new-instance v12, Lcom/twitter/android/moments/data/d;

    invoke-direct {v12, v7}, Lcom/twitter/android/moments/data/d;-><init>(Lcom/twitter/util/object/i;)V

    invoke-direct {v11, v8, v9, v12, v10}, Lcom/twitter/android/moments/data/ae;-><init>(JLcom/twitter/android/moments/data/d;Lcom/twitter/android/moments/data/s;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->g:Lcom/twitter/android/moments/data/ae;

    .line 162
    invoke-static {v6}, Lcez;->a(Lcom/twitter/library/provider/dm;)Lcez;

    move-result-object v13

    .line 163
    new-instance v7, Lahd;

    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->g:Lcom/twitter/android/moments/data/ae;

    .line 164
    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Lcom/twitter/android/moments/data/ae;->c(J)Lrx/o;

    move-result-object v11

    move-object/from16 v12, p25

    move-object/from16 v14, p26

    invoke-direct/range {v7 .. v14}, Lahd;-><init>(JLcom/twitter/model/moments/ad;Lrx/o;Lcom/twitter/model/moments/viewmodels/p;Lcez;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    .line 165
    new-instance v23, Lahu;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    const/16 v7, 0xbad

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v10}, Lahu;-><init>(Landroid/app/Activity;ILahd;)V

    .line 167
    const v6, 0x7f130405

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 168
    const v6, 0x7f1304c8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 169
    new-instance v10, Lcom/twitter/android/moments/ui/fullscreen/hy;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-wide/from16 v12, v20

    move-object/from16 v14, p25

    move-object/from16 v15, p4

    move-object/from16 v16, p7

    invoke-direct/range {v10 .. v16}, Lcom/twitter/android/moments/ui/fullscreen/hy;-><init>(Landroid/content/Context;JLcom/twitter/model/moments/viewmodels/p;Lcet;Lcom/twitter/library/client/bd;)V

    .line 171
    new-instance v14, Lcom/twitter/android/moments/data/MomentsFriendshipCache;

    move-object/from16 v0, p25

    invoke-direct {v14, v0}, Lcom/twitter/android/moments/data/MomentsFriendshipCache;-><init>(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 172
    new-instance v32, Lahv;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 173
    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, v32

    invoke-direct {v0, v7, v11, v12}, Lahv;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/ad;Lahd;)V

    .line 174
    new-instance v63, Lcom/twitter/android/moments/ui/fullscreen/gv;

    move-object/from16 v0, v63

    move-object/from16 v1, p22

    move-object/from16 v2, p25

    move-object/from16 v3, v32

    move-object/from16 v4, p30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/moments/ui/fullscreen/gv;-><init>(Lajw;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/android/moments/ui/fullscreen/dt;Lcom/twitter/android/moments/ui/fullscreen/gg;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 177
    move-object/from16 v0, p22

    move-object/from16 v1, p25

    move-object/from16 v2, p30

    invoke-static {v0, v1, v7, v2}, Lcom/twitter/android/moments/ui/fullscreen/dl;->a(Lajw;Lcom/twitter/model/moments/viewmodels/p;Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/gg;)Lcom/twitter/android/moments/ui/fullscreen/dl;

    move-result-object v64

    .line 178
    new-instance v11, Lcom/twitter/android/moments/ui/fullscreen/ei;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v16, v0

    new-instance v22, Lcom/twitter/android/av/audio/n;

    invoke-direct/range {v22 .. v22}, Lcom/twitter/android/av/audio/n;-><init>()V

    move-object/from16 v13, p13

    move-object/from16 v15, v23

    move-object/from16 v17, p14

    move-object/from16 v18, p28

    move-object/from16 v19, p24

    invoke-direct/range {v11 .. v22}, Lcom/twitter/android/moments/ui/fullscreen/ei;-><init>(Landroid/content/Context;Lcom/twitter/android/sn;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/moments/ui/fullscreen/a;Lahd;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/aq;Lcom/twitter/app/common/util/t;JLcom/twitter/android/av/audio/n;)V

    .line 183
    new-instance v7, Lcom/twitter/android/moments/data/z;

    new-instance v12, Lcom/twitter/android/moments/data/w;

    new-instance v13, Lazn;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 184
    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-direct {v13, v14}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v12, v13}, Lcom/twitter/android/moments/data/w;-><init>(Lazt;)V

    invoke-direct {v7, v8, v9, v12}, Lcom/twitter/android/moments/data/z;-><init>(JLcom/twitter/android/moments/data/w;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->j:Lcom/twitter/android/moments/data/z;

    .line 185
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/az;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/twitter/android/moments/ui/fullscreen/az;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V

    .line 196
    new-instance v12, Ladw;

    new-instance v13, Lcom/twitter/app/common/account/UserIdentifier;

    invoke-direct {v13, v8, v9}, Lcom/twitter/app/common/account/UserIdentifier;-><init>(J)V

    new-instance v14, Lcom/twitter/android/moments/data/d;

    invoke-direct {v14, v7}, Lcom/twitter/android/moments/data/d;-><init>(Lcom/twitter/util/object/i;)V

    invoke-direct {v12, v13, v14}, Ladw;-><init>(Lcom/twitter/app/common/account/UserIdentifier;Lcom/twitter/android/moments/data/d;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->h:Ladw;

    .line 202
    invoke-static {}, Lcey;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    new-instance v16, Lbpw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-object/from16 v17, v0

    .line 204
    invoke-virtual/range {p6 .. p6}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v18

    move-object/from16 v19, p4

    invoke-direct/range {v16 .. v21}, Lbpw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;J)V

    .line 206
    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7, v12}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->j:Lcom/twitter/android/moments/data/z;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->h:Ladw;

    move-wide/from16 v0, v20

    invoke-static {v7, v12, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fu;->a(Lcom/twitter/android/moments/data/z;Ladw;J)Lcom/twitter/android/moments/ui/fullscreen/fu;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->s:Lcom/twitter/android/moments/ui/fullscreen/fu;

    .line 211
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->s:Lcom/twitter/android/moments/ui/fullscreen/fu;

    invoke-virtual {v7}, Lcom/twitter/android/moments/ui/fullscreen/fu;->a()Lrx/o;

    move-result-object v7

    .line 217
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 219
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100031

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 220
    new-instance v15, Lakk;

    move-object/from16 v0, v24

    invoke-direct {v15, v0, v6, v12, v13}, Lakk;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V

    .line 222
    new-instance v16, Lcom/twitter/android/moments/ui/fullscreen/du;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/du;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/a;J)V

    .line 224
    new-instance v12, Lcom/twitter/android/moments/ui/fullscreen/er;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v14, p7

    invoke-direct/range {v12 .. v18}, Lcom/twitter/android/moments/ui/fullscreen/er;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lakk;Lcom/twitter/android/moments/ui/fullscreen/fo;ZZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->k:Lcom/twitter/android/moments/ui/fullscreen/er;

    .line 227
    new-instance v39, Lcom/twitter/android/moments/ui/fullscreen/fy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 228
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, v39

    move-object/from16 v1, p15

    invoke-direct {v0, v6, v7, v1, v12}, Lcom/twitter/android/moments/ui/fullscreen/fy;-><init>(Landroid/view/LayoutInflater;Lrx/o;Lcom/twitter/android/moments/ui/fullscreen/fb;Lahd;)V

    .line 231
    new-instance v6, Lahh;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, p20

    invoke-direct {v6, v0, v7}, Lahh;-><init>(Lcom/twitter/android/moments/ui/fullscreen/cm;Lahd;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->p:Lahh;

    .line 233
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->b:Lcom/twitter/android/moments/ui/fullscreen/fc;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {v6, v7}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->b:Lcom/twitter/android/moments/ui/fullscreen/fc;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    .line 235
    invoke-virtual {v6, v7}, Lcom/twitter/android/moments/ui/fullscreen/fc;->c(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/moments/core/ui/widget/capsule/b;

    move-result-object v14

    .line 236
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->n:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 240
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->d:Landroid/view/View;

    const v7, 0x7f1304b5

    .line 242
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/twitter/ui/widget/DragOnlySeekBar;

    .line 243
    const v6, 0x7f0206f9

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 244
    const v6, 0x7f110009

    const/4 v7, 0x1

    const/4 v12, 0x1

    .line 245
    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7, v12}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v17

    .line 246
    new-instance v12, Lcom/twitter/moments/core/ui/widget/capsule/c;

    .line 247
    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct/range {v12 .. v17}, Lcom/twitter/moments/core/ui/widget/capsule/c;-><init>(ILcom/twitter/moments/core/ui/widget/capsule/b;Landroid/graphics/drawable/Drawable;Landroid/widget/SeekBar;F)V

    .line 249
    new-instance v22, Lcom/twitter/android/moments/ui/fullscreen/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->k:Lcom/twitter/android/moments/ui/fullscreen/er;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->i:Laev;

    move-object/from16 v29, v0

    move-object/from16 v23, p16

    move-object/from16 v24, p18

    move-object/from16 v25, p25

    move-object/from16 v26, v14

    move-object/from16 v27, v11

    invoke-direct/range {v22 .. v29}, Lcom/twitter/android/moments/ui/fullscreen/am;-><init>(Lajl;Lcom/twitter/util/x;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/er;Laev;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    .line 253
    new-instance v27, Lcom/twitter/android/moments/ui/fullscreen/ab;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, p10

    move-object/from16 v3, p20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/ab;-><init>(Lcom/twitter/android/moments/ui/fullscreen/m;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/cm;)V

    .line 255
    new-instance v22, Lcom/twitter/android/moments/ui/fullscreen/f;

    move-object/from16 v23, p16

    move-object/from16 v24, p20

    move-object/from16 v25, v31

    move-object/from16 v26, v14

    move-object/from16 v28, p30

    invoke-direct/range {v22 .. v28}, Lcom/twitter/android/moments/ui/fullscreen/f;-><init>(Lajl;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/m;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/gg;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/fullscreen/ax;->q:Lcom/twitter/android/moments/ui/fullscreen/f;

    .line 259
    new-instance v36, Lcom/twitter/android/moments/ui/fullscreen/gm;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/twitter/android/moments/ui/fullscreen/gm;-><init>(Landroid/content/Context;Lahd;)V

    .line 261
    new-instance v6, Lcom/twitter/android/card/e;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    .line 262
    new-instance v44, Lcin;

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcin;-><init>(Landroid/content/res/Resources;)V

    .line 264
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/ba;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v9}, Lcom/twitter/android/moments/ui/fullscreen/ba;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ax;J)V

    .line 272
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    invoke-static {v8, v7}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Landroid/content/Context;Lcom/twitter/util/object/c;)Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-result-object v43

    .line 273
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/fp;

    move-object/from16 v0, p1

    move-object/from16 v1, p29

    move-object/from16 v2, v44

    invoke-direct {v7, v0, v6, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/fp;-><init>(Landroid/app/Activity;Lcom/twitter/android/card/d;Laeo;Lcin;)V

    .line 275
    new-instance v45, Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 276
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-direct {v0, v7, v6}, Lcom/twitter/android/moments/ui/fullscreen/cv;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fp;Lrx/t;)V

    .line 277
    new-instance v28, Lcom/twitter/android/moments/ui/fullscreen/gp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 278
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->g:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    move-object/from16 v41, v0

    move-object/from16 v34, p27

    move-object/from16 v35, v11

    move-object/from16 v37, p18

    move-object/from16 v42, v27

    invoke-direct/range {v28 .. v45}, Lcom/twitter/android/moments/ui/fullscreen/gp;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/android/moments/ui/fullscreen/dt;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/util/x;Lahd;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gh;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 284
    new-instance v46, Lcom/twitter/android/moments/ui/fullscreen/bf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    move-object/from16 v57, v0

    move-object/from16 v48, p18

    move-object/from16 v49, v28

    move-object/from16 v50, p10

    move-object/from16 v51, v27

    move-object/from16 v52, p20

    move-object/from16 v53, p24

    move-object/from16 v54, p21

    move-object/from16 v56, p19

    move-object/from16 v58, v36

    move-object/from16 v59, v43

    move-object/from16 v60, v44

    move-object/from16 v61, v45

    invoke-direct/range {v46 .. v61}, Lcom/twitter/android/moments/ui/fullscreen/bf;-><init>(Landroid/app/Activity;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/gp;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/fullscreen/fn;Lahd;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 291
    move-object/from16 v0, v46

    move-object/from16 v1, p25

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/bf;->a(Lcom/twitter/model/moments/viewmodels/a;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->l:Ljava/util/List;

    .line 292
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->f:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->l:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/twitter/moments/core/ui/widget/sectionpager/e;->a(Ljava/util/List;)V

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v14, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 297
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v14, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->q:Lcom/twitter/android/moments/ui/fullscreen/f;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v14, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v14, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 306
    new-instance v6, Lcom/twitter/android/moments/data/ak;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    .line 307
    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v8

    iget-wide v10, v8, Lcom/twitter/model/moments/ad;->b:J

    const-class v8, Lcom/twitter/android/moments/data/ak;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v9}, Lcom/twitter/android/moments/data/p;->a(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v13, p7

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/moments/data/ak;-><init>(Landroid/content/Context;Lcet;Landroid/support/v4/app/LoaderManager;JILcom/twitter/library/client/bd;)V

    .line 309
    new-instance v7, Lcom/twitter/android/moments/data/ah;

    move-object/from16 v0, p6

    invoke-direct {v7, v0, v6}, Lcom/twitter/android/moments/data/ah;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/android/moments/data/ak;)V

    .line 311
    invoke-virtual/range {p25 .. p25}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/twitter/android/moments/data/ah;->a(Ljava/util/List;)V

    .line 312
    invoke-virtual/range {p5 .. p5}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual/range {p5 .. p5}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->c:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/bb;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/twitter/android/moments/ui/fullscreen/bb;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 326
    return-void

    .line 213
    :cond_1
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/ax;->s:Lcom/twitter/android/moments/ui/fullscreen/fu;

    .line 214
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v7

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/twitter/moments/core/ui/widget/capsule/b;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .prologue
    .line 334
    invoke-interface {p1, p2}, Lcom/twitter/moments/core/ui/widget/capsule/b;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/ax;)Lcom/twitter/android/moments/ui/fullscreen/am;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/ax;)Lcom/twitter/android/moments/ui/fullscreen/bc;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->t:Lcom/twitter/android/moments/ui/fullscreen/bc;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    invoke-virtual {v0, p1}, Lahd;->a(Landroid/os/Bundle;)V

    .line 344
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/fullscreen/bc;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->t:Lcom/twitter/android/moments/ui/fullscreen/bc;

    .line 330
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->k:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 348
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->n:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v2, v0}, Lcom/twitter/moments/core/ui/widget/capsule/b;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->q:Lcom/twitter/android/moments/ui/fullscreen/f;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/f;->a()V

    .line 351
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->m:Lcom/twitter/android/moments/ui/fullscreen/am;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/am;->a()V

    .line 352
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 353
    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->b:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->b(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 357
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->f:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/moments/core/ui/widget/sectionpager/e;->b(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->s:Lcom/twitter/android/moments/ui/fullscreen/fu;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->s:Lcom/twitter/android/moments/ui/fullscreen/fu;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fu;->b()V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->h:Ladw;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 362
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->j:Lcom/twitter/android/moments/data/z;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 363
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->g:Lcom/twitter/android/moments/data/ae;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 364
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->p:Lahh;

    invoke-virtual {v0}, Lahh;->a()V

    .line 365
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->o:Lahd;

    invoke-virtual {v0}, Lahd;->g()V

    .line 366
    return-void
.end method

.method public c()Lcom/twitter/model/moments/viewmodels/a;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ax;->r:Lcom/twitter/model/moments/viewmodels/a;

    return-object v0
.end method

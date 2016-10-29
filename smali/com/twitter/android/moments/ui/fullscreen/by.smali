.class public Lcom/twitter/android/moments/ui/fullscreen/by;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/util/collection/ac",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final A:Lajn;

.field private final B:Lcom/twitter/android/moments/ui/b;

.field private final C:Lcom/twitter/android/moments/ui/fullscreen/aq;

.field private final D:Lcom/twitter/android/moments/ui/fullscreen/ar;

.field private final E:Laeo;

.field private final F:Lcom/twitter/android/moments/ui/fullscreen/gg;

.field private final G:Lcom/twitter/android/moments/ui/fullscreen/em;

.field private final H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

.field private final I:Lcwy;

.field private final J:Landroid/os/Bundle;

.field private final K:Lcom/twitter/android/moments/ui/fullscreen/fm;

.field private final L:Landroid/view/View;

.field private M:Lcom/twitter/model/moments/viewmodels/a;

.field private N:I

.field private final O:J

.field private final a:Lcom/twitter/android/sn;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/dm;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/fc;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final g:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/android/moments/ui/DoubleTapFavoriteHud;

.field private final i:Lcom/twitter/android/moments/data/p;

.field private final j:Landroid/support/v4/app/FragmentActivity;

.field private final k:Lcom/twitter/library/client/bk;

.field private final l:Lcom/twitter/app/common/util/t;

.field private final m:Lcom/twitter/android/moments/ui/fullscreen/dn;

.field private final n:Lcom/twitter/android/moments/ui/fullscreen/bd;

.field private final o:Lcom/twitter/android/moments/ui/fullscreen/fn;

.field private final p:Lcom/twitter/android/moments/ui/fullscreen/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcet;

.field private final r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

.field private final s:Lajw;

.field private final t:Lahs;

.field private final u:Lcom/twitter/android/moments/ui/fullscreen/cj;

.field private final v:Laev;

.field private final w:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/twitter/android/moments/data/bo;

.field private final y:Lcom/twitter/android/moments/ui/fullscreen/ck;

.field private final z:Ladj;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;Lcom/twitter/android/sn;Lcom/twitter/library/client/bk;JLcom/twitter/library/provider/dm;Lcom/twitter/app/common/util/t;JLcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/fn;Lcom/twitter/android/moments/data/p;Landroid/os/Bundle;Lcwy;Lcom/twitter/android/moments/data/bo;Ladj;Lajn;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/aq;Lcom/twitter/android/moments/ui/fullscreen/ar;Laeo;Lcom/twitter/android/moments/ui/fullscreen/gg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;",
            "Lcom/twitter/android/sn;",
            "Lcom/twitter/library/client/bk;",
            "J",
            "Lcom/twitter/library/provider/dm;",
            "Lcom/twitter/app/common/util/t;",
            "J",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/fn;",
            "Lcom/twitter/android/moments/data/p;",
            "Landroid/os/Bundle;",
            "Lcwy;",
            "Lcom/twitter/android/moments/data/bo;",
            "Ladj;",
            "Lajn;",
            "Lcom/twitter/android/moments/ui/b;",
            "Lcom/twitter/android/moments/ui/fullscreen/aq;",
            "Lcom/twitter/android/moments/ui/fullscreen/ar;",
            "Laeo;",
            "Lcom/twitter/android/moments/ui/fullscreen/gg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    .line 138
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->a:Lcom/twitter/android/sn;

    .line 139
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->k:Lcom/twitter/library/client/bk;

    .line 140
    const v4, 0x7f1304c3

    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    .line 141
    const v4, 0x7f1304c5

    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    .line 142
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-static {}, Lcom/twitter/android/moments/ui/fullscreen/fg;->a()Lcom/twitter/android/moments/ui/fullscreen/fg;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/cm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fg;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 143
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/dm;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/moments/ui/fullscreen/dm;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/ao;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 144
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->i:Lcom/twitter/android/moments/data/p;

    .line 145
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->l:Lcom/twitter/app/common/util/t;

    .line 146
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->o:Lcom/twitter/android/moments/ui/fullscreen/fn;

    .line 147
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->p:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 148
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->p:Lcom/twitter/android/moments/ui/fullscreen/bs;

    invoke-virtual {v4, p0}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Lcom/twitter/util/y;)V

    .line 149
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    .line 150
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->x:Lcom/twitter/android/moments/data/bo;

    .line 151
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->O:J

    .line 152
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->z:Ladj;

    .line 153
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->A:Lajn;

    .line 154
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->D:Lcom/twitter/android/moments/ui/fullscreen/ar;

    .line 155
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->E:Laeo;

    .line 156
    new-instance v4, Lcet;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p7

    move-wide/from16 v1, p5

    invoke-direct {v4, v5, v0, v1, v2}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->q:Lcet;

    .line 157
    const v4, 0x7f1304c4

    .line 158
    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/moments/core/ui/widget/sectionpager/SectionsView;

    .line 159
    new-instance v5, Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-direct {v5, v6, v4}, Lcom/twitter/moments/core/ui/widget/sectionpager/e;-><init>(Lcom/twitter/ui/widget/ScrollEventsFilteringViewPager;Lcom/twitter/moments/core/ui/widget/sectionpager/SectionsView;)V

    iput-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    .line 160
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    const v5, 0x7f0f032d

    invoke-virtual {v4, v5}, Lcom/twitter/moments/core/ui/widget/sectionpager/e;->a(I)V

    .line 161
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/moments/ui/fullscreen/fc;-><init>(Lcom/twitter/moments/core/ui/widget/sectionpager/e;Landroid/support/v4/view/ViewPager;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    .line 162
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    invoke-virtual {v5}, Lcom/twitter/moments/core/ui/widget/sectionpager/e;->c()Lcom/twitter/moments/core/ui/widget/sectionpager/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 163
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->B:Lcom/twitter/android/moments/ui/b;

    .line 164
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->C:Lcom/twitter/android/moments/ui/fullscreen/aq;

    .line 165
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->F:Lcom/twitter/android/moments/ui/fullscreen/gg;

    .line 167
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->k:Lcom/twitter/library/client/bk;

    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v6

    .line 168
    new-instance v4, Laev;

    new-instance v5, Lazm;

    new-instance v7, Ladd;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v7, v8, v6}, Ladd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-direct {v5, v7}, Lazm;-><init>(Lazt;)V

    new-instance v7, Lazm;

    new-instance v8, Ladb;

    iget-object v9, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    .line 173
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    .line 172
    invoke-static {v9, v10, v11}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v9

    invoke-direct {v8, v9}, Ladb;-><init>(Lcom/twitter/library/provider/dm;)V

    invoke-direct {v7, v8}, Lazm;-><init>(Lazt;)V

    invoke-direct {v4, v5, v7}, Laev;-><init>(Lazt;Lazt;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->v:Laev;

    .line 175
    new-instance v7, Lcom/twitter/android/moments/ui/fullscreen/bw;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-direct {v7, v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/bw;-><init>(Landroid/support/v4/view/ViewPager;Lcom/twitter/model/moments/viewmodels/p;)V

    .line 178
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/fm;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->o:Lcom/twitter/android/moments/ui/fullscreen/fn;

    invoke-direct {v4, v5, v7}, Lcom/twitter/android/moments/ui/fullscreen/fm;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fn;Lcom/twitter/moments/core/ui/widget/capsule/b;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->K:Lcom/twitter/android/moments/ui/fullscreen/fm;

    .line 180
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->K:Lcom/twitter/android/moments/ui/fullscreen/fm;

    invoke-virtual {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 182
    const v4, 0x7f1304c9

    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/moments/ui/DoubleTapFavoriteHud;

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->h:Lcom/twitter/android/moments/ui/DoubleTapFavoriteHud;

    .line 184
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v4, v5, v7}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;-><init>(Landroid/content/Context;Lcom/twitter/moments/core/ui/widget/capsule/b;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    .line 190
    :goto_0
    const v4, 0x7f1304c6

    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 191
    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/bz;

    invoke-direct {v5, p0}, Lcom/twitter/android/moments/ui/fullscreen/bz;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v4, 0x7f1303eb

    invoke-virtual {p2, v4}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/widget/ToggleImageButton;

    .line 201
    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v5}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 202
    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/ci;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-direct {v5, v8, v4}, Lcom/twitter/android/moments/ui/fullscreen/ci;-><init>(Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/widget/ToggleImageButton;)V

    invoke-virtual {v4, v5}, Lcom/twitter/android/widget/ToggleImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v5}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v5

    new-instance v8, Lcom/twitter/android/moments/ui/fullscreen/ca;

    invoke-direct {v8, p0, v4}, Lcom/twitter/android/moments/ui/fullscreen/ca;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/android/widget/ToggleImageButton;)V

    invoke-virtual {v5, v8}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 212
    invoke-static {p2}, Lajw;->a(Landroid/view/ViewGroup;)Lajw;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->s:Lajw;

    .line 213
    new-instance v4, Lcom/twitter/util/x;

    invoke-direct {v4}, Lcom/twitter/util/x;-><init>()V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    .line 215
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const v5, 0x7f1304c1

    invoke-virtual {p2, v5}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->L:Landroid/view/View;

    .line 219
    const v5, 0x7f1304c2

    invoke-virtual {p2, v5}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 220
    new-instance v8, Lcom/twitter/android/moments/ui/fullscreen/cb;

    invoke-direct {v8, p0}, Lcom/twitter/android/moments/ui/fullscreen/cb;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V

    .line 232
    new-instance v9, Lcom/twitter/ui/widget/touchintercept/e;

    new-instance v10, Lcom/twitter/ui/widget/touchintercept/a;

    iget-object v11, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    iget-object v12, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->L:Landroid/view/View;

    invoke-direct {v10, v11, v5, v12, v8}, Lcom/twitter/ui/widget/touchintercept/a;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcom/twitter/ui/widget/touchintercept/d;)V

    invoke-direct {v9, p1, v10}, Lcom/twitter/ui/widget/touchintercept/e;-><init>(Landroid/content/Context;Lcom/twitter/ui/widget/touchintercept/h;)V

    .line 236
    invoke-virtual {p2, v9}, Lcom/twitter/ui/widget/touchintercept/TouchInterceptingFrameLayout;->setTouchInterceptListener(Lcom/twitter/ui/widget/touchintercept/f;)V

    .line 237
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/cj;

    invoke-direct {v5, v4}, Lcom/twitter/android/moments/ui/fullscreen/cj;-><init>(Ljava/util/Set;)V

    iput-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->u:Lcom/twitter/android/moments/ui/fullscreen/cj;

    .line 240
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    iget-object v10, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->u:Lcom/twitter/android/moments/ui/fullscreen/cj;

    iget-object v11, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->o:Lcom/twitter/android/moments/ui/fullscreen/fn;

    invoke-static {v4, v5, v8, v10, v11}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/cj;Lcom/twitter/android/moments/ui/fullscreen/fn;)Lcom/twitter/android/moments/ui/fullscreen/dn;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->m:Lcom/twitter/android/moments/ui/fullscreen/dn;

    .line 244
    move-wide/from16 v0, p5

    invoke-static {p1, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 243
    invoke-static {v4}, Lcez;->a(Lcom/twitter/library/provider/dm;)Lcez;

    move-result-object v4

    .line 245
    new-instance v5, Lahs;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    move-wide/from16 v0, p5

    invoke-direct {v5, v0, v1, v8, v4}, Lahs;-><init>(JLcom/twitter/android/moments/ui/fullscreen/fc;Lcez;)V

    iput-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->t:Lahs;

    .line 248
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->t:Lahs;

    invoke-virtual {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/cc;

    invoke-direct {v4, p0}, Lcom/twitter/android/moments/ui/fullscreen/cc;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V

    .line 258
    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/bd;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v10, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-direct {v5, v8, v10, v4}, Lcom/twitter/android/moments/ui/fullscreen/bd;-><init>(Landroid/support/v4/view/ViewPager;Lcom/twitter/android/moments/ui/fullscreen/fc;Lcom/twitter/util/object/c;)V

    iput-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    .line 261
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v10

    .line 262
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v5, "tap_to_fit_tutorial_fatigue"

    .line 266
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 264
    invoke-static {v4, v5, v8, v9}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v6

    .line 267
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f1304ca

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 268
    invoke-virtual {v6}, Lcom/twitter/android/util/t;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

    .line 270
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/em;

    iget-object v8, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    iget-object v9, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->p:Lcom/twitter/android/moments/ui/fullscreen/bs;

    invoke-direct/range {v4 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/em;-><init>(Lcom/twitter/android/moments/ui/fullscreen/TapHintView;Lcom/twitter/android/util/t;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    .line 273
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-virtual {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 274
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_2
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/ck;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    invoke-direct {v4, v5, v10}, Lcom/twitter/android/moments/ui/fullscreen/ck;-><init>(Lcom/twitter/moments/core/ui/widget/sectionpager/e;Ljava/util/Set;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->y:Lcom/twitter/android/moments/ui/fullscreen/ck;

    .line 281
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->y:Lcom/twitter/android/moments/ui/fullscreen/ck;

    invoke-virtual {v4, v5}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 283
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    .line 285
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/fi;

    new-instance v5, Lcom/twitter/android/moments/ui/j;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-direct {v5, v6}, Lcom/twitter/android/moments/ui/j;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-direct {v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/fi;-><init>(Lcom/twitter/android/moments/ui/j;)V

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->w:Lcom/twitter/util/y;

    .line 286
    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->w:Lcom/twitter/util/y;

    invoke-virtual {v4, v5}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 287
    return-void

    .line 187
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    goto/16 :goto_0

    .line 201
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 276
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    goto :goto_2
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->N:I

    return p1
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Lcom/twitter/android/moments/ui/fullscreen/fc;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Lcom/twitter/android/moments/ui/fullscreen/fc;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/ax;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    const-string/jumbo v1, "state_main_pager_current_item"

    .line 520
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object p2

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Lcom/twitter/android/moments/ui/fullscreen/fc;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 524
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ch;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/ch;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/android/moments/ui/fullscreen/ax;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/bc;)V

    .line 533
    :cond_1
    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Lcom/twitter/android/moments/ui/fullscreen/fc;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/fc;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/ax;"
        }
    .end annotation

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->h:Lcom/twitter/android/moments/ui/DoubleTapFavoriteHud;

    .line 417
    invoke-static {v1, v2, v3}, Lajl;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/DoubleTapFavoriteHud;)Lajl;

    move-result-object v17

    .line 418
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lajl;->a(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Lajl;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    invoke-virtual/range {v17 .. v17}, Lajl;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f1304c8

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v8

    .line 423
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->q:Lcet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->k:Lcom/twitter/library/client/bk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    .line 425
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->i:Lcom/twitter/android/moments/data/p;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->r:Lcom/twitter/moments/core/ui/widget/sectionpager/e;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->a:Lcom/twitter/android/sn;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->B:Lcom/twitter/android/moments/ui/b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    move-object/from16 v16, v0

    .line 427
    invoke-virtual/range {v17 .. v17}, Lajl;->g()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->p:Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->o:Lcom/twitter/android/moments/ui/fullscreen/fn;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->s:Lajw;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->v:Laev;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->l:Lcom/twitter/app/common/util/t;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->x:Lcom/twitter/android/moments/data/bo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->C:Lcom/twitter/android/moments/ui/fullscreen/aq;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->E:Laeo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->F:Lcom/twitter/android/moments/ui/fullscreen/gg;

    move-object/from16 v31, v0

    move-object/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v26, p1

    move-object/from16 v27, p4

    invoke-direct/range {v1 .. v31}, Lcom/twitter/android/moments/ui/fullscreen/ax;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/fc;Lcet;Lcom/twitter/util/collection/ab;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/moments/data/p;Lcom/twitter/android/moments/ui/fullscreen/dm;Landroid/support/v4/view/ViewPager;Lcom/twitter/moments/core/ui/widget/sectionpager/e;Lcom/twitter/android/sn;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/fb;Lajl;Landroid/view/View;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/fn;Lajw;Laev;Lcom/twitter/app/common/util/t;Lcom/twitter/model/moments/viewmodels/a;Landroid/os/Bundle;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/fullscreen/aq;Laeo;Lcom/twitter/android/moments/ui/fullscreen/gg;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/fullscreen/by;->K:Lcom/twitter/android/moments/ui/fullscreen/fm;

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/bc;)V

    .line 432
    return-object v1
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/model/moments/viewmodels/a;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->M:Lcom/twitter/model/moments/viewmodels/a;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;Lcom/twitter/model/moments/ak;)Lcom/twitter/util/collection/ab;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->b(Ljava/util/List;Lcom/twitter/model/moments/ak;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Laev;Lcom/twitter/util/collection/ab;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/model/moments/viewmodels/a;Laev;Lcom/twitter/util/collection/ab;)V

    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;Laev;Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Laev;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->D:Lcom/twitter/android/moments/ui/fullscreen/ar;

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Laev;Lcom/twitter/model/moments/a;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/cg;

    invoke-direct {v1, p0, p1, p3}, Lcom/twitter/android/moments/ui/fullscreen/cg;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;)V

    .line 396
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    .line 410
    return-void
.end method

.method private a(Lcom/twitter/util/collection/ab;Lcom/twitter/model/moments/ak;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/twitter/model/moments/ak;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->b(Landroid/os/Bundle;)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/cd;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/cd;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V

    invoke-virtual {v0, v1}, Lcwy;->a(Lcxd;)V

    .line 333
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    invoke-virtual {v0}, Lcwy;->a()V

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    const-string/jumbo v1, "state_current_moment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    const-string/jumbo v1, "state_current_moment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 344
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Moment ID must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/dm;->b()V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_2
    iget-wide v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->O:J

    goto :goto_2

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->z:Ladj;

    invoke-interface {v2, v0, v1}, Ladj;->a(J)Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ce;

    invoke-direct {v1, p0, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/ce;-><init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/ak;Lcom/twitter/util/collection/ab;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 376
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->m:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 377
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->m:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    return-void
.end method

.method static a(Landroid/view/KeyEvent;Lcom/twitter/android/moments/ui/fullscreen/cm;)Z
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->c(I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/by;)Lahs;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->t:Lahs;

    return-object v0
.end method

.method private static b(Ljava/util/List;Lcom/twitter/model/moments/ak;)Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;",
            "Lcom/twitter/model/moments/ak;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/cf;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cf;-><init>(Lcom/twitter/model/moments/ak;)V

    invoke-static {p0, v0}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v0

    .line 389
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/fc;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->e:Lcom/twitter/android/moments/ui/fullscreen/fc;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->L:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/model/moments/viewmodels/a;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->M:Lcom/twitter/model/moments/viewmodels/a;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/moments/ui/fullscreen/by;)Laev;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->v:Laev;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/moments/ui/fullscreen/by;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->N:I

    return v0
.end method

.method static synthetic h(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcwy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/ar;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->D:Lcom/twitter/android/moments/ui/fullscreen/ar;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/android/moments/ui/fullscreen/by;)Lajn;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->A:Lajn;

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->J:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/bd;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/dn;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->m:Lcom/twitter/android/moments/ui/fullscreen/dn;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 564
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/Event;

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;->l:Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/Event;-><init>(Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/Event;

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;->m:Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/Event;-><init>(Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->c()Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Landroid/os/Bundle;)V

    .line 470
    const-string/jumbo v1, "state_current_moment_id"

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->c()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->m:Lcom/twitter/android/moments/ui/fullscreen/dn;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/dn;->a(Landroid/os/Bundle;)V

    .line 473
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a(Landroid/os/Bundle;)V

    .line 474
    const-string/jumbo v0, "state_main_pager_current_item"

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->d:Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-static {p1, v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Landroid/view/KeyEvent;Lcom/twitter/android/moments/ui/fullscreen/cm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a(Z)V

    .line 454
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ak;)V
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/util/collection/ab;Lcom/twitter/model/moments/ak;)V

    .line 299
    return-void
.end method

.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/util/collection/ab;Lcom/twitter/model/moments/ak;)V

    .line 295
    return-void
.end method

.method public a(Lcom/twitter/util/collection/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;->b:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 501
    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->f:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->g:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->e:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-ne v0, v1, :cond_2

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    invoke-virtual {v0}, Lcwy;->b()V

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->c:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    if-ne v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    invoke-virtual {v0}, Lcwy;->c()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/twitter/util/collection/ac;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/util/collection/ac;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->g:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->w:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 479
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->e()V

    .line 480
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a(Z)V

    .line 481
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->p:Lcom/twitter/android/moments/ui/fullscreen/bs;

    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/bs;->c(Lcom/twitter/util/y;)V

    .line 482
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->v:Laev;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 483
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->G:Lcom/twitter/android/moments/ui/fullscreen/em;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/em;->c()V

    .line 486
    :cond_0
    if-nez p1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->b()V

    .line 489
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/by;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->a()Z

    move-result v0

    .line 440
    if-nez v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->t:Lahs;

    invoke-virtual {v1}, Lahs;->b()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/by;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 538
    if-eqz p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    .line 542
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->I:Lcwy;

    invoke-virtual {v0}, Lcwy;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->n:Lcom/twitter/android/moments/ui/fullscreen/bd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->d()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/by;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->f:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dm;->b(Z)V

    .line 551
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a()V

    .line 554
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->b:Lcom/twitter/android/moments/ui/fullscreen/dm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/dm;->a()V

    .line 558
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/by;->H:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->b()V

    .line 561
    :cond_0
    return-void
.end method

.class public abstract Lcom/twitter/android/highlights/StoriesActivity;
.super Lcom/twitter/app/common/base/BaseFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/twitter/android/highlights/ai;
.implements Lcom/twitter/android/highlights/ak;
.implements Lcom/twitter/android/widget/highlights/g;
.implements Lcom/twitter/android/widget/highlights/k;
.implements Lcom/twitter/ui/widget/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/BaseFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Lcom/twitter/android/highlights/ai;",
        "Lcom/twitter/android/highlights/ak;",
        "Lcom/twitter/android/widget/highlights/g;",
        "Lcom/twitter/android/widget/highlights/k;",
        "Lcom/twitter/ui/widget/e;"
    }
.end annotation


# instance fields
.field protected a:Lcom/twitter/library/client/bk;

.field protected b:Lcom/twitter/android/highlights/am;

.field protected c:Lcom/twitter/android/highlights/aj;

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/twitter/android/highlights/ad;

.field protected g:Lcom/twitter/library/client/bd;

.field protected h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

.field protected i:I

.field protected j:Landroid/view/View;

.field protected k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected l:I

.field protected m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/highlights/bb;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Z

.field protected final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/highlights/bb;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation
.end field

.field protected q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/ViewGroup;

.field private t:Z

.field private u:Lcom/twitter/android/highlights/as;

.field private v:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->d:Z

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->n:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->p:Ljava/util/Map;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->t:Z

    return-void
.end method

.method private a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/cx;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 4

    .prologue
    .line 960
    invoke-virtual {p1}, Lcom/twitter/android/highlights/as;->a()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/android/highlights/StoriesActivity;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 961
    if-eqz v1, :cond_1

    .line 962
    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 964
    :goto_0
    const-string/jumbo v2, "story"

    const-string/jumbo v3, "open_link"

    invoke-virtual {p0, v2, v1, v3}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 966
    :goto_1
    return-object v0

    .line 962
    :cond_0
    iget-object v0, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    goto :goto_0

    .line 966
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/highlights/as;Lcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 624
    invoke-virtual {p1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iget-object v4, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget v7, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    move-object v1, p0

    move-object v8, v5

    move-object v9, v5

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    .line 626
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 628
    invoke-static {p2}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 629
    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    packed-switch p0, :pswitch_data_0

    .line 1014
    :pswitch_0
    const/4 v0, 0x0

    .line 1018
    :goto_0
    return-object v0

    .line 1005
    :pswitch_1
    const-string/jumbo v0, "tweet"

    goto :goto_0

    .line 1010
    :pswitch_2
    const-string/jumbo v0, "user"

    goto :goto_0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/view/View;)Lcom/twitter/android/highlights/as;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getCurrentItem()I

    move-result v3

    .line 633
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0, v3}, Lcom/twitter/android/highlights/aj;->a(I)Lcom/twitter/android/highlights/as;

    move-result-object v2

    .line 634
    if-nez v2, :cond_0

    move-object v0, v1

    .line 645
    :goto_0
    return-object v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/at;

    .line 641
    iget v0, v0, Lcom/twitter/android/highlights/at;->F:I

    if-eq v0, v3, :cond_1

    move-object v0, v1

    .line 642
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 645
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 4

    .prologue
    .line 972
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 972
    return-object v0
.end method

.method public a(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 859
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0}, Lcom/twitter/android/highlights/aj;->b()I

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->a()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->v:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->c()V

    .line 868
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/highlights/ad;->a(Lcom/twitter/android/widget/highlights/StoriesViewPager;Landroid/view/View;Z)V

    .line 869
    const-string/jumbo v0, "exit"

    invoke-virtual {p0, v4, v4, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const-string/jumbo v1, "swipe"

    .line 870
    invoke-static {v1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Ljava/lang/String;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 869
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    if-eq v0, p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->u:Lcom/twitter/android/highlights/as;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->u:Lcom/twitter/android/highlights/as;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/android/highlights/as;Z)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0, p1}, Lcom/twitter/android/highlights/aj;->a(I)Lcom/twitter/android/highlights/as;

    move-result-object v0

    .line 381
    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->u:Lcom/twitter/android/highlights/as;

    .line 382
    if-eqz v0, :cond_1

    .line 385
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/android/highlights/as;Z)V

    .line 386
    iput p1, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    .line 389
    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->e:Z

    if-nez v0, :cond_0

    .line 363
    const-string/jumbo v0, "StoriesActivity"

    const-string/jumbo v1, "initializing ViewPager"

    invoke-static {v0, v1}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(I)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->e:Z

    .line 370
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, v1}, Lcom/twitter/android/highlights/ad;->a(Lcom/twitter/android/widget/highlights/StoriesViewPager;)V

    .line 372
    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 354
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;J)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 915
    invoke-static {p2}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-object v8, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    move-object v9, v6

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method abstract a(Landroid/content/Intent;JI)V
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/16 v0, 0x68

    const/4 v3, 0x0

    .line 1103
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1106
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    .line 1107
    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->b()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    .line 1108
    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->b()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 1109
    :cond_0
    iput-boolean v3, p0, Lcom/twitter/android/highlights/StoriesActivity;->e:Z

    .line 1110
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    invoke-virtual {v1}, Lcom/twitter/android/highlights/ad;->a()V

    .line 1112
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->a()I

    move-result v1

    iget-boolean v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->d:Z

    if-eqz v2, :cond_2

    const/16 v0, 0x66

    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/database/Cursor;II)V

    .line 1116
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->k()V

    .line 1124
    :goto_0
    return-void

    .line 1119
    :cond_3
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->d:Z

    if-eqz v2, :cond_4

    const/16 v0, 0x67

    :cond_4
    invoke-virtual {p0, v1, v3, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/database/Cursor;II)V

    goto :goto_0
.end method

.method a(Landroid/database/Cursor;II)V
    .locals 1

    .prologue
    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    .line 1134
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/highlights/aj;->a(Landroid/database/Cursor;II)V

    .line 1135
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1056
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 1057
    packed-switch v0, :pswitch_data_0

    .line 1068
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    invoke-virtual {v1, v0}, Lcom/twitter/android/highlights/am;->a(Ljava/lang/String;)Lcom/twitter/android/highlights/bc;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0, p2}, Lcom/twitter/android/highlights/bc;->a(Landroid/database/Cursor;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1059
    :pswitch_0
    const-string/jumbo v0, "StoriesActivity"

    const-string/jumbo v1, "Story load finished"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->o:Z

    if-eqz v0, :cond_1

    .line 1061
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v1}, Lcom/twitter/android/highlights/aj;->a()I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/database/Cursor;II)V

    goto :goto_0

    .line 1063
    :cond_1
    invoke-virtual {p0, p2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lclw;)V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method a(Lcom/twitter/android/highlights/as;)V
    .locals 3

    .prologue
    .line 439
    const-string/jumbo v0, "story"

    const/4 v1, 0x0

    const-string/jumbo v2, "impression"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 440
    invoke-static {p1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 441
    invoke-virtual {p1}, Lcom/twitter/android/highlights/as;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :goto_0
    :pswitch_0
    return-void

    .line 450
    :pswitch_1
    const-string/jumbo v0, "story"

    const-string/jumbo v1, "tweet"

    const-string/jumbo v2, "impression"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 451
    invoke-static {p1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 458
    :pswitch_2
    check-cast p1, Lcom/twitter/android/highlights/bm;

    .line 459
    const-string/jumbo v0, "story"

    const-string/jumbo v1, "tweet"

    const-string/jumbo v2, "impression"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/highlights/bm;->b:Lcom/twitter/model/core/Tweet;

    .line 460
    invoke-static {p1, v1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 461
    const-string/jumbo v0, "story"

    const-string/jumbo v1, "tweet"

    const-string/jumbo v2, "impression"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/highlights/bm;->a:Lcom/twitter/model/core/Tweet;

    .line 462
    invoke-static {p1, v1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 467
    :pswitch_3
    const-string/jumbo v0, "story"

    const-string/jumbo v1, "user"

    const-string/jumbo v2, "impression"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 468
    invoke-static {p1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/twitter/android/highlights/as;Z)V
    .locals 7

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/twitter/android/highlights/as;->a()I

    move-result v0

    .line 406
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->q:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/twitter/android/highlights/as;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/twitter/android/highlights/as;->k:Z

    if-nez v1, :cond_0

    .line 408
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 409
    const-string/jumbo v1, "StoriesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Logging impression and setting read state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/twitter/android/highlights/as;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->g:Lcom/twitter/library/client/bd;

    new-instance v2, Lbpa;

    .line 411
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    .line 412
    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    iget-object v5, p1, Lcom/twitter/android/highlights/as;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->a()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lbpa;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;I)V

    .line 410
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 413
    invoke-virtual {p0, p1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/android/highlights/as;)V

    .line 417
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->q:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/twitter/android/highlights/as;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 423
    :sswitch_0
    check-cast p1, Lcom/twitter/android/highlights/u;

    .line 424
    invoke-virtual {p1, p2}, Lcom/twitter/android/highlights/u;->a(Z)V

    goto :goto_0

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/twitter/android/highlights/bb;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 900
    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 902
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->p:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method public a(Lcom/twitter/android/highlights/m;Lcom/twitter/android/highlights/p;)V
    .locals 0

    .prologue
    .line 909
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lclw;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 724
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/TweetMediaView;->getId()I

    move-result v0

    const v2, 0x7f1303ed

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 725
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/TweetMediaView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/Tweet;

    .line 726
    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    :cond_0
    new-instance v0, Lcom/twitter/app/common/base/z;

    invoke-direct {v0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 728
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v0

    const-class v1, Lcom/twitter/android/TweetActivity;

    .line 729
    invoke-virtual {v0, p0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tw"

    .line 730
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 731
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 727
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 747
    :goto_1
    return-void

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 733
    :cond_2
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    invoke-virtual {p2}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    invoke-virtual {v0}, Lcom/twitter/model/core/da;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/cx;

    .line 734
    invoke-virtual {p0, p1}, Lcom/twitter/android/highlights/StoriesActivity;->b(Landroid/view/View;)Lcom/twitter/android/highlights/as;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_3

    .line 736
    invoke-direct {p0, v0, v3}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/cx;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_3

    .line 738
    invoke-static {v0, v2}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 739
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;J)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/core/MediaEntity;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 752
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/TweetMediaView;->getId()I

    move-result v0

    const v1, 0x7f1303ed

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 753
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/TweetMediaView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 754
    if-nez v0, :cond_1

    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A tweet is required. Be sure that the view is properly configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 758
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    throw v0

    :cond_0
    move v1, v3

    .line 752
    goto :goto_0

    .line 764
    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    sget-object v4, Lcom/twitter/model/core/MediaEntity$Type;->c:Lcom/twitter/model/core/MediaEntity$Type;

    if-ne v1, v4, :cond_4

    .line 765
    :cond_2
    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 766
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    .line 767
    invoke-virtual {v1, p0, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tw"

    .line 768
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 769
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 770
    invoke-virtual {p0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 796
    :goto_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/highlights/StoriesActivity;->b(Landroid/view/View;)Lcom/twitter/android/highlights/as;

    move-result-object v1

    .line 797
    if-eqz v1, :cond_3

    .line 798
    invoke-virtual {v1}, Lcom/twitter/android/highlights/as;->a()I

    move-result v2

    invoke-static {v2}, Lcom/twitter/android/highlights/StoriesActivity;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_3

    .line 800
    const-string/jumbo v3, "story"

    const-string/jumbo v4, "image_click"

    invoke-virtual {p0, v3, v2, v4}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    .line 801
    invoke-static {v1, v0}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v0

    .line 800
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 804
    :cond_3
    return-void

    .line 771
    :cond_4
    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    sget-object v4, Lcom/twitter/model/core/MediaEntity$Type;->d:Lcom/twitter/model/core/MediaEntity$Type;

    if-ne v1, v4, :cond_5

    .line 772
    new-instance v1, Lcom/twitter/android/av/bj;

    invoke-direct {v1}, Lcom/twitter/android/av/bj;-><init>()V

    .line 773
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/ap;

    move-result-object v1

    .line 774
    invoke-virtual {v1, v2}, Lcom/twitter/library/av/ap;->d(Z)Lcom/twitter/library/av/ap;

    move-result-object v1

    .line 775
    invoke-virtual {v1, p0}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 777
    :cond_5
    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 778
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    const-class v2, Lcom/twitter/android/GalleryActivity;

    .line 779
    invoke-virtual {v1, p0, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "media"

    sget-object v4, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    .line 781
    invoke-static {p2, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v4

    .line 780
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "source_tweet_id"

    iget-wide v4, p2, Lcom/twitter/model/core/MediaEntity;->i:J

    .line 782
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "statusId"

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->C:J

    .line 784
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_tw"

    .line 785
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 786
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 789
    invoke-virtual {p1, p2}, Lcom/twitter/library/media/widget/TweetMediaView;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/ui/image/BaseMediaImageView;

    move-result-object v2

    .line 790
    if-eqz v2, :cond_6

    .line 791
    invoke-static {p0, v1, v2}, Lcom/twitter/android/GalleryActivity;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    goto/16 :goto_1

    .line 793
    :cond_6
    invoke-virtual {p0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/media/EditableMedia;)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(Z)V

    .line 1045
    return-void
.end method

.method public a(Lcom/twitter/library/widget/ObservableScrollView;)V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method public a(Lcom/twitter/library/widget/ObservableScrollView;IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 813
    invoke-virtual {p1}, Lcom/twitter/library/widget/ObservableScrollView;->getId()I

    move-result v0

    const v1, 0x7f1303f6

    if-ne v0, v1, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/twitter/library/widget/ObservableScrollView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/at;

    .line 815
    invoke-virtual {p1}, Lcom/twitter/library/widget/ObservableScrollView;->getHeight()I

    move-result v1

    .line 816
    invoke-virtual {p1, v4}, Lcom/twitter/library/widget/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 817
    add-int v3, p3, v1

    if-lt v3, v2, :cond_1

    .line 818
    iget-object v0, v0, Lcom/twitter/android/highlights/at;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    add-int/2addr v1, p5

    if-lt v1, v2, :cond_0

    .line 820
    iget-object v0, v0, Lcom/twitter/android/highlights/at;->E:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public a(Lcom/twitter/model/core/av;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 662
    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    const/4 v7, -0x1

    move-object v1, p0

    move-object v6, v5

    move-object v8, v5

    move-object v9, v5

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 665
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 3

    .prologue
    .line 670
    .line 671
    invoke-static {p0, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source_association"

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 670
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 673
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 6

    .prologue
    .line 694
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    iget v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/highlights/aj;->a(I)Lcom/twitter/android/highlights/as;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0, v0, p1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/android/highlights/as;Lcom/twitter/model/core/cx;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_0

    .line 698
    invoke-static {v0}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 699
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 705
    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;J)V

    .line 706
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 3

    .prologue
    .line 677
    .line 678
    invoke-static {p0, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source_association"

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 677
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 680
    return-void
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/content/Intent;JI)V

    .line 242
    invoke-virtual {p0, v5}, Lcom/twitter/android/highlights/StoriesActivity;->setIntent(Landroid/content/Intent;)V

    .line 247
    iget-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->e:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setEnabled(Z)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 251
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/twitter/android/highlights/StoriesActivity;->d:Z

    .line 946
    return-void
.end method

.method public b(Landroid/view/View;)Lcom/twitter/android/highlights/as;
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/at;

    .line 952
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    iget v0, v0, Lcom/twitter/android/highlights/at;->F:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/highlights/aj;->a(I)Lcom/twitter/android/highlights/as;

    move-result-object v0

    .line 954
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public b(Lcom/twitter/library/widget/ObservableScrollView;)V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method public b(Lcom/twitter/library/widget/ObservableScrollView;IIII)V
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/twitter/library/widget/ObservableScrollView;->getId()I

    move-result v0

    const v1, 0x7f1303f6

    if-ne v0, v1, :cond_0

    .line 838
    new-instance v0, Lcom/twitter/android/highlights/ab;

    invoke-direct {v0, p0, p1, p3}, Lcom/twitter/android/highlights/ab;-><init>(Lcom/twitter/android/highlights/StoriesActivity;Lcom/twitter/library/widget/ObservableScrollView;I)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 853
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/model/core/cx;)Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->finish()V

    .line 894
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->o:Z

    .line 480
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->finish()V

    .line 291
    const/4 v0, 0x0

    const v1, 0x7f050031

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->overridePendingTransition(II)V

    .line 292
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(Z)V

    .line 1049
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1022
    iput-boolean v3, p0, Lcom/twitter/android/highlights/StoriesActivity;->o:Z

    .line 1023
    new-instance v0, Lcom/twitter/library/provider/b;

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 1024
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    sget-object v2, Lcom/twitter/library/provider/di;->a:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 1025
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 1026
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    if-eqz v0, :cond_1

    .line 881
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 882
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->i:I

    .line 883
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->a(I)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setEnabled(Z)V

    .line 889
    :cond_1
    return-void
.end method

.method k()V
    .locals 3

    .prologue
    .line 1033
    const-string/jumbo v0, "story"

    const/4 v1, 0x0

    const-string/jumbo v2, "load_finished"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 1034
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v2}, Lcom/twitter/android/highlights/aj;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v2, v0}, Lcom/twitter/android/highlights/aj;->a(I)Lcom/twitter/android/highlights/as;

    move-result-object v2

    .line 1036
    if-eqz v2, :cond_0

    .line 1037
    invoke-static {v2}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 1034
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 1041
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0}, Lcom/twitter/android/highlights/aj;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onBackPressed()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->j:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/highlights/ad;->a(Lcom/twitter/android/widget/highlights/StoriesViewPager;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 501
    invoke-virtual {p0, p1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/view/View;)Lcom/twitter/android/highlights/as;

    move-result-object v1

    .line 502
    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move-object v6, v1

    .line 587
    check-cast v6, Lcom/twitter/android/highlights/aw;

    .line 595
    iget-boolean v0, v6, Lcom/twitter/android/highlights/aw;->r:Z

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/android/highlights/aw;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 603
    :goto_1
    const-string/jumbo v0, "story"

    const-string/jumbo v1, "open_link"

    invoke-virtual {p0, v0, v2, v1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 604
    invoke-static {v6}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, v6, Lcom/twitter/android/highlights/aw;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 603
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 510
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 511
    const-string/jumbo v2, "story"

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "name_click"

    invoke-virtual {p0, v2, v3, v4}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/highlights/as;Lcom/twitter/library/scribe/TwitterScribeLog;)V

    goto :goto_0

    .line 518
    :sswitch_2
    invoke-virtual {v1, p0}, Lcom/twitter/android/highlights/as;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 519
    const-string/jumbo v0, "story"

    const-string/jumbo v3, "launch"

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 520
    invoke-static {v1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 525
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/ao;

    .line 526
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->g:Lcom/twitter/library/client/bd;

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/highlights/ao;->a(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 531
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/ao;

    .line 532
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/highlights/ao;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_0

    .line 536
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/aq;

    .line 537
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->g:Lcom/twitter/library/client/bd;

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/highlights/aq;->a(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_0

    .line 542
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 543
    const-string/jumbo v2, "story"

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "image_click"

    invoke-virtual {p0, v2, v3, v4}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/highlights/as;Lcom/twitter/library/scribe/TwitterScribeLog;)V

    goto/16 :goto_0

    .line 549
    :sswitch_7
    check-cast p1, Lcom/twitter/media/ui/image/BaseMediaImageView;

    .line 550
    invoke-virtual {p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getImageRequest()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v3, Lcom/twitter/app/common/base/z;

    invoke-direct {v3}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 554
    invoke-virtual {v3, v4}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v3

    const-class v4, Lcom/twitter/android/ImageActivity;

    .line 555
    invoke-virtual {v3, p0, v4}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 556
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "image_url"

    .line 557
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    const-string/jumbo v0, "story"

    const-string/jumbo v3, "image_click"

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 559
    invoke-static {v1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    :sswitch_8
    move-object v0, v1

    .line 564
    check-cast v0, Lcom/twitter/android/highlights/u;

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/highlights/at;

    invoke-virtual {v0, v1}, Lcom/twitter/android/highlights/u;->a(Lcom/twitter/android/highlights/at;)Z

    goto/16 :goto_0

    .line 569
    :sswitch_9
    check-cast v1, Lcom/twitter/android/highlights/u;

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/at;

    invoke-virtual {v1, v0, v4}, Lcom/twitter/android/highlights/u;->a(Lcom/twitter/android/highlights/at;Z)V

    goto/16 :goto_0

    .line 574
    :sswitch_a
    check-cast v1, Lcom/twitter/android/highlights/u;

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/at;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/highlights/u;->a(Lcom/twitter/android/highlights/at;Z)V

    goto/16 :goto_0

    .line 579
    :sswitch_b
    check-cast v1, Lcom/twitter/android/highlights/bp;

    .line 580
    new-instance v0, Lcom/twitter/app/common/base/z;

    invoke-direct {v0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 581
    invoke-virtual {v0, v4}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v0

    const-class v2, Lcom/twitter/android/TweetActivity;

    .line 582
    invoke-virtual {v0, p0, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tw"

    iget-object v1, v1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    .line 583
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 580
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 600
    :cond_2
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    iget-object v1, v6, Lcom/twitter/android/highlights/aw;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    invoke-virtual {v0}, Lcom/twitter/model/core/da;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/cx;

    .line 601
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;J)V

    goto/16 :goto_1

    .line 608
    :sswitch_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/highlights/bg;

    .line 609
    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 610
    invoke-virtual {v1, v4}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    .line 611
    invoke-virtual {v1, p0, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tw"

    iget-object v0, v0, Lcom/twitter/android/highlights/bg;->k:Lcom/twitter/model/core/Tweet;

    .line 612
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 609
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13003b -> :sswitch_0
        0x7f13004c -> :sswitch_1
        0x7f13004e -> :sswitch_1
        0x7f1301a2 -> :sswitch_6
        0x7f1301d5 -> :sswitch_8
        0x7f13033a -> :sswitch_7
        0x7f1303eb -> :sswitch_9
        0x7f1303ec -> :sswitch_a
        0x7f1303ed -> :sswitch_b
        0x7f1303f2 -> :sswitch_4
        0x7f1303f3 -> :sswitch_3
        0x7f1303f4 -> :sswitch_5
        0x7f1303f5 -> :sswitch_2
        0x7f1303f7 -> :sswitch_7
        0x7f1303f9 -> :sswitch_1
        0x7f1303fa -> :sswitch_7
        0x7f1303fc -> :sswitch_6
        0x7f130409 -> :sswitch_4
        0x7f13040a -> :sswitch_3
        0x7f13040b -> :sswitch_c
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->t:Z

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 157
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    .line 159
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const-string/jumbo v0, "StoriesActivity"

    const-string/jumbo v1, "No logged in user; falling back to log in."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 211
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string/jumbo v1, "StoriesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Active user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x6

    .line 169
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->k:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 171
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->g:Lcom/twitter/library/client/bd;

    .line 173
    if-eqz p1, :cond_1

    .line 174
    const-string/jumbo v0, "STATE_STORIES_VISITED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->q:Ljava/util/HashSet;

    .line 175
    const-string/jumbo v0, "STATE_NEXT_LOADER_ID"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->l:I

    .line 176
    const-string/jumbo v0, "STATE_AGGREGATE_STORY_IDS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->m:Ljava/util/HashMap;

    .line 184
    :goto_1
    const v0, 0x7f04013d

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->setContentView(I)V

    .line 185
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 186
    const v0, 0x7f1200b3

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const v0, 0x7f1303c0

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->s:Landroid/view/ViewGroup;

    .line 191
    const v0, 0x7f1303be

    .line 192
    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/FullScreenFrameLayout;

    .line 193
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/FullScreenFrameLayout;->setFitSystemWindowListener(Lcom/twitter/ui/widget/e;)V

    .line 196
    const v0, 0x7f110007

    invoke-virtual {v7, v0, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->v:F

    .line 197
    const v0, 0x7f1303c1

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->j:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f1303c2

    invoke-virtual {p0, v0}, Lcom/twitter/android/highlights/StoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/highlights/StoriesViewPager;

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    .line 202
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setOffscreenPageLimit(I)V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setOnPageChangeListener(Lcom/twitter/android/widget/highlights/k;)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setEdgeListener(Lcom/twitter/android/widget/highlights/g;)V

    .line 205
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    new-instance v0, Lcom/twitter/android/highlights/am;

    invoke-direct {v0}, Lcom/twitter/android/highlights/am;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    .line 207
    new-instance v0, Lcom/twitter/android/highlights/aj;

    iget-object v2, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->c()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->a()I

    move-result v6

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/highlights/aj;-><init>(Landroid/content/Context;Lcom/twitter/android/highlights/am;Lcom/twitter/android/highlights/ak;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    .line 209
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->c:Lcom/twitter/android/highlights/aj;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setAdapter(Lcom/twitter/android/highlights/aj;)V

    .line 210
    new-instance v0, Lcom/twitter/android/highlights/ad;

    invoke-direct {v0, v7, p0}, Lcom/twitter/android/highlights/ad;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/highlights/ai;)V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    goto/16 :goto_0

    .line 178
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->q:Ljava/util/HashSet;

    .line 179
    iput v5, p0, Lcom/twitter/android/highlights/StoriesActivity;->l:I

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->m:Ljava/util/HashMap;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    invoke-virtual {v0}, Lcom/twitter/android/highlights/am;->a()V

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/twitter/android/highlights/StoriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 308
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 309
    const v1, 0x7f0f021e

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 310
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 311
    const v0, 0x7f0f024f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 317
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v0, v7}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 318
    int-to-float v0, v5

    mul-float/2addr v0, v3

    float-to-int v6, v0

    .line 321
    const v0, 0x7f0f0234

    .line 322
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v1, v0, -0x1

    .line 323
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v6, v0

    add-int/2addr v0, v4

    .line 327
    if-le v0, v1, :cond_0

    .line 333
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    .line 335
    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 336
    sub-int v0, v5, v0

    div-int/lit8 v3, v0, 0x2

    .line 337
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    .line 338
    invoke-virtual {v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 339
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 340
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    iget-object v3, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v3, v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->h:Lcom/twitter/android/widget/highlights/StoriesViewPager;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/highlights/StoriesViewPager;->setPageMargin(I)V

    .line 346
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->f:Lcom/twitter/android/highlights/ad;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/twitter/android/highlights/ad;->a:I

    .line 347
    iput-boolean v7, p0, Lcom/twitter/android/highlights/StoriesActivity;->t:Z

    .line 349
    :cond_1
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1082
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 1083
    packed-switch v0, :pswitch_data_0

    .line 1090
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1092
    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->b:Lcom/twitter/android/highlights/am;

    invoke-virtual {v1, v0}, Lcom/twitter/android/highlights/am;->a(Ljava/lang/String;)Lcom/twitter/android/highlights/bc;

    move-result-object v0

    .line 1093
    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {v0, v2}, Lcom/twitter/android/highlights/bc;->a(Lcom/twitter/android/highlights/bb;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1085
    :pswitch_0
    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-virtual {p0, v2, v0, v1}, Lcom/twitter/android/highlights/StoriesActivity;->a(Landroid/database/Cursor;II)V

    goto :goto_0

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v1

    .line 230
    if-nez v1, :cond_0

    .line 231
    const-string/jumbo v0, "StoriesActivity"

    const-string/jumbo v1, "Current logged in user was removed; falling back to log in."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/twitter/android/highlights/StoriesActivity;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    const-string/jumbo v0, "STATE_STORIES_VISITED"

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->q:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 274
    const-string/jumbo v0, "STATE_NEXT_LOADER_ID"

    iget v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string/jumbo v0, "STATE_AGGREGATE_STORY_IDS"

    iget-object v1, p0, Lcom/twitter/android/highlights/StoriesActivity;->m:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 276
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 989
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 256
    iget-object v0, p0, Lcom/twitter/android/highlights/StoriesActivity;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onStop()V

    .line 258
    return-void
.end method

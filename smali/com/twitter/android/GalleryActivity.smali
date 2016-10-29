.class public Lcom/twitter/android/GalleryActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Laai;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/bn;
.implements Lcom/twitter/android/xs;
.implements Lcom/twitter/app/common/base/m;
.implements Lcwb;
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/TwitterFragmentActivity;",
        "Laai;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/twitter/android/bn;",
        "Lcom/twitter/android/xs;",
        "Lcom/twitter/app/common/base/m;",
        "Lcwb;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final l:Lcom/twitter/ui/view/s;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcom/twitter/android/xo;

.field private E:Lcom/twitter/library/widget/SlidingPanel;

.field private K:J

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Lcom/twitter/ui/widget/TwitterButton;

.field private O:Z

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/TextView;

.field private R:Z

.field private final S:Laah;

.field private T:Lcom/twitter/android/gp;

.field private U:Ljava/lang/String;

.field private V:Landroid/view/View;

.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Z

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation
.end field

.field private aa:F

.field private ab:Z

.field private ac:Lcom/twitter/model/core/am;

.field private ad:Landroid/view/ViewGroup;

.field private ae:Lzo;

.field private af:Lcom/twitter/library/av/b;

.field private ag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcef;",
            ">;>;"
        }
    .end annotation
.end field

.field private ah:Z

.field protected b:Z

.field protected c:Lcom/twitter/android/av/GalleryVideoChromeView;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Landroid/widget/FrameLayout;

.field protected f:Lzv;

.field g:Landroid/view/animation/Animation;

.field h:Landroid/view/animation/Animation;

.field i:Lcom/twitter/model/core/Tweet;

.field j:Lcom/twitter/model/core/MediaEntity;

.field k:I

.field private m:Lcss;

.field private n:Lcom/twitter/library/widget/TweetView;

.field private o:Landroid/support/v4/view/ViewPager;

.field private p:J

.field private q:Z

.field private r:Landroid/view/ViewGroup;

.field private s:Lcom/twitter/android/MediaActionBarFragment;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/twitter/library/client/Session;

.field private v:[Ljava/lang/String;

.field private w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private x:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private y:Lcom/twitter/android/gn;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 291
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/GalleryActivity;->a:[Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 319
    invoke-virtual {v0, v3}, Lcom/twitter/ui/view/u;->b(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/GalleryActivity;->l:Lcom/twitter/ui/view/s;

    .line 318
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 336
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/twitter/android/GalleryActivity;->p:J

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->q:Z

    .line 396
    new-instance v0, Laah;

    invoke-direct {v0, p0}, Laah;-><init>(Laai;)V

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->S:Laah;

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/GalleryActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/twitter/android/GalleryActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/GalleryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->Z:Ljava/util/List;

    return-object v0
.end method

.method private a(IILcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 1718
    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_1

    .line 1719
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    .line 1721
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method private a(IJLcss;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1925
    invoke-direct {p0, p1}, Lcom/twitter/android/GalleryActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 1926
    if-eqz v0, :cond_0

    .line 1927
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1928
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1929
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1930
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->x:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 1931
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1927
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1933
    :cond_0
    return-void
.end method

.method private a(ILcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 1898
    invoke-direct {p0, p1}, Lcom/twitter/android/GalleryActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 1899
    if-eqz v2, :cond_0

    .line 1902
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1903
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 1904
    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->C:J

    iput-wide v4, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 1905
    new-instance v1, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    invoke-direct {v1}, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;-><init>()V

    .line 1906
    iget-object v3, p2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v3, v3, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->a:Ljava/lang/String;

    .line 1907
    iget-object v3, p2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v3, v3, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    invoke-virtual {v3}, Lcom/twitter/model/geo/TwitterPlace$PlaceType;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->b:Ljava/lang/String;

    .line 1908
    iget-object v3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v3, v3, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1913
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1914
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 1915
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1916
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1917
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1913
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1919
    :cond_0
    return-void

    .line 1910
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->x:Lcom/twitter/library/scribe/TwitterScribeItem;

    move-object v1, v0

    goto :goto_0
.end method

.method private a(JLjava/util/List;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v1, Lbrr;

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    .line 951
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    move-object v2, p0

    move-wide v4, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lbrr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/util/List;Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 952
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V
    .locals 2

    .prologue
    const/16 v1, 0x23bf

    .line 385
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1, p2}, Lzo;->a(Landroid/content/Intent;Lcom/twitter/media/ui/image/BaseMediaImageView;)V

    .line 388
    invoke-static {p0, p1, p2, v1}, Lcvx;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;I)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/GalleryActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/twitter/android/GalleryActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 1692
    .line 1693
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 1694
    :goto_0
    invoke-static {p1}, Lcom/twitter/android/av/m;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1695
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1697
    :cond_0
    return-void

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->m:Lcss;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    const/4 v3, 0x0

    .line 1289
    iget v0, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1290
    iget-wide v0, p0, Lcom/twitter/android/GalleryActivity;->p:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    if-nez v0, :cond_3

    .line 1291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v3

    .line 1292
    :goto_0
    if-ge v1, v4, :cond_5

    .line 1293
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laab;

    .line 1294
    iget-object v0, v0, Laab;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->q:J

    iget-wide v8, p0, Lcom/twitter/android/GalleryActivity;->p:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 1296
    iput-wide v10, p0, Lcom/twitter/android/GalleryActivity;->p:J

    move v0, v1

    :goto_1
    move v2, v0

    .line 1313
    :cond_0
    :goto_2
    iput v2, p0, Lcom/twitter/android/GalleryActivity;->W:I

    .line 1314
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v0, p1}, Lzv;->a(Ljava/util/List;)V

    .line 1315
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1316
    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->onPageSelected(I)V

    .line 1317
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->p()V

    .line 1319
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    new-instance v1, Lcom/twitter/android/gk;

    invoke-direct {v1, p0}, Lcom/twitter/android/gk;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1332
    :cond_1
    return-void

    .line 1292
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1300
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/GalleryActivity;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v3

    .line 1303
    :goto_3
    if-ge v1, v4, :cond_0

    .line 1304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laab;

    .line 1305
    iget-object v5, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    iget-object v5, v5, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    iget-object v0, v0, Laab;->c:Lcom/twitter/media/request/b;

    iget-object v0, v0, Lcom/twitter/media/request/b;->p:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    .line 1307
    goto :goto_2

    .line 1303
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/android/GalleryActivity;Z)Z
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/twitter/android/GalleryActivity;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/widget/SlidingPanel;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/GalleryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/android/GalleryActivity;->Z:Ljava/util/List;

    return-object p1
.end method

.method private b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 1430
    invoke-direct {p0, p1}, Lcom/twitter/android/GalleryActivity;->c(Lcom/twitter/model/core/Tweet;)V

    .line 1431
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    invoke-virtual {v0, p1}, Lcom/twitter/android/gp;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1432
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->S:Laah;

    invoke-virtual {v0, p1}, Laah;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1433
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    sget-object v1, Lcom/twitter/android/GalleryActivity;->l:Lcom/twitter/ui/view/s;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V

    .line 1434
    iput-object p1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    .line 1435
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->s:Lcom/twitter/android/MediaActionBarFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MediaActionBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1436
    invoke-static {p1}, Lciz;->m(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1437
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->s:Lcom/twitter/android/MediaActionBarFragment;

    invoke-virtual {v1, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1438
    if-eqz v0, :cond_0

    .line 1439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->l()V

    .line 1447
    invoke-static {}, Lcbd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {p0, p1}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/model/core/Tweet;)Ljava/util/Map;

    .line 1450
    :cond_1
    return-void

    .line 1442
    :cond_2
    if-eqz v0, :cond_0

    .line 1443
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/GalleryActivity;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->r()V

    return-void
.end method

.method private c(Lcom/twitter/model/core/Tweet;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1453
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->O:Z

    if-nez v0, :cond_2

    .line 1454
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->R:Z

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v7}, Lcom/twitter/library/widget/TweetView;->setHideProfileImage(Z)V

    .line 1456
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v8}, Lcom/twitter/library/widget/TweetView;->setMaxLines(I)V

    .line 1457
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1458
    iput-boolean v7, p0, Lcom/twitter/android/GalleryActivity;->R:Z

    .line 1496
    :cond_1
    :goto_0
    return-void

    .line 1463
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setHideProfileImage(Z)V

    .line 1464
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/TweetView;->setMaxLines(I)V

    .line 1466
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f0a09a0

    .line 1467
    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1468
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 1469
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1470
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x22

    invoke-virtual {v6, v0, v7, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a036c

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1472
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/TweetView;->setTruncateText(Ljava/lang/CharSequence;)V

    .line 1474
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1478
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    const-string/jumbo v1, "author"

    invoke-virtual {v0, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x7f0a099e

    invoke-virtual {p0, v3}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1484
    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    .line 1486
    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v3}, Lcom/twitter/library/widget/TweetView;->getPaddingRight()I

    move-result v3

    .line 1485
    invoke-virtual {v0, v1, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1488
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->R:Z

    if-nez v0, :cond_3

    .line 1489
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1490
    if-le v0, v8, :cond_3

    .line 1491
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1492
    iput-boolean v2, p0, Lcom/twitter/android/GalleryActivity;->R:Z

    .line 1495
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->v:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->v:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->v:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1889
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/GalleryActivity;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->s()V

    return-void
.end method

.method private d(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->P:Landroid/view/View;

    const v1, 0x7f13075b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1504
    const-string/jumbo v1, "co.vine.android"

    invoke-static {p0, v1}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    const v1, 0x7f0a05ea

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1508
    :cond_2
    const v1, 0x7f0a03dd

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1509
    new-instance v1, Lcom/twitter/android/gl;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/gl;-><init>(Lcom/twitter/android/GalleryActivity;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/android/GalleryActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1942
    const-string/jumbo v1, ""

    .line 1943
    packed-switch p1, :pswitch_data_0

    .line 1996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->v:[Ljava/lang/String;

    .line 1997
    const/4 v0, 0x0

    .line 2014
    :goto_0
    return-object v0

    .line 1945
    :pswitch_0
    const-string/jumbo v0, "profile"

    .line 2000
    :cond_0
    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    const-string/jumbo v4, "gallery"

    aput-object v4, v3, v8

    const-string/jumbo v4, "next:click"

    aput-object v4, v3, v9

    .line 2001
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    const-string/jumbo v4, "gallery"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prev:click"

    aput-object v4, v3, v9

    .line 2002
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    const-string/jumbo v4, "gallery"

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->U:Ljava/lang/String;

    aput-object v4, v3, v9

    .line 2003
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    const-string/jumbo v4, "gallery"

    aput-object v4, v3, v8

    const-string/jumbo v4, "tweet:click"

    aput-object v4, v3, v9

    .line 2004
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    const-string/jumbo v4, "gallery"

    aput-object v4, v3, v8

    const-string/jumbo v4, "media_tag_summary:click"

    aput-object v4, v3, v9

    .line 2005
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v5, "gallery"

    aput-object v5, v4, v8

    const-string/jumbo v5, "remove_my_media_tag:click"

    aput-object v5, v4, v9

    .line 2006
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v5, "gallery"

    aput-object v5, v4, v8

    const-string/jumbo v5, "media_tagged_user:follow"

    aput-object v5, v4, v9

    .line 2007
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v5, "gallery"

    aput-object v5, v4, v8

    const-string/jumbo v5, "media_tagged_user:unfollow"

    aput-object v5, v4, v9

    .line 2008
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v5, "gallery"

    aput-object v5, v4, v8

    const-string/jumbo v5, "tweet:open_link"

    aput-object v5, v4, v9

    .line 2009
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v5, "gallery"

    aput-object v5, v4, v8

    const-string/jumbo v5, "button:cta_click_open"

    aput-object v5, v4, v9

    .line 2010
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    const-string/jumbo v1, "gallery"

    aput-object v1, v4, v8

    const-string/jumbo v1, "place_tag:click"

    aput-object v1, v4, v9

    .line 2011
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/twitter/android/GalleryActivity;->v:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1949
    :pswitch_1
    const-string/jumbo v0, "events"

    goto/16 :goto_1

    .line 1953
    :pswitch_2
    const-string/jumbo v0, "search"

    goto/16 :goto_1

    .line 1957
    :pswitch_3
    const-string/jumbo v0, "search"

    .line 1958
    const-string/jumbo v1, "cluster"

    goto/16 :goto_1

    .line 1962
    :pswitch_4
    const-string/jumbo v0, "home"

    goto/16 :goto_1

    .line 1966
    :pswitch_5
    const-string/jumbo v0, "tweet"

    goto/16 :goto_1

    .line 1970
    :pswitch_6
    const-string/jumbo v0, "profile_tweets"

    goto/16 :goto_1

    .line 1974
    :pswitch_7
    const-string/jumbo v0, "list"

    goto/16 :goto_1

    .line 1978
    :pswitch_8
    const-string/jumbo v0, "favorites"

    goto/16 :goto_1

    .line 1982
    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1983
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 1984
    :goto_2
    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1985
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1983
    :cond_1
    const-string/jumbo v0, "photo_grid"

    goto :goto_2

    .line 1989
    :pswitch_a
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1990
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 1991
    :goto_3
    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1992
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1990
    :cond_2
    const-string/jumbo v0, "profile"

    goto :goto_3

    .line 1943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic f(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/GalleryActivity;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/SlidingPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 692
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setAlpha(F)V

    .line 693
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ad:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 696
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->ad:Landroid/view/ViewGroup;

    invoke-static {p0, v1, v2, v0}, Lzo;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    .line 697
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    invoke-virtual {v0}, Lzo;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    .line 698
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    new-instance v1, Lcom/twitter/android/gg;

    invoke-direct {v1, p0}, Lcom/twitter/android/gg;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lzo;->a(Lcvw;)V

    .line 712
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 793
    iget v0, p0, Lcom/twitter/android/GalleryActivity;->W:I

    iget v1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/SlidingPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 798
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->setAlpha(F)V

    .line 799
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    invoke-virtual {v0}, Lzo;->aF_()V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 1563
    .line 1564
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    .line 1565
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/twitter/android/GalleryActivity;->ac:Lcom/twitter/model/core/am;

    .line 1566
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->P()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1568
    sget-object v3, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 1569
    invoke-static {v0, v3}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Lcuk;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 1570
    invoke-static {v3}, Lcuk;->b(Ljava/util/List;)[J

    move-result-object v0

    .line 1571
    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/twitter/android/xo;->a(Landroid/support/v4/app/LoaderManager;[J)V

    .line 1572
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1573
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->ac:Lcom/twitter/model/core/am;

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->t:Landroid/widget/TextView;

    new-instance v4, Lcom/twitter/android/gm;

    invoke-direct {v4, p0}, Lcom/twitter/android/gm;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->t:Landroid/widget/TextView;

    const v4, 0x7f020563

    invoke-static {p0, v3, v4}, Lcom/twitter/library/media/util/aa;->b(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1586
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1589
    iget v3, p0, Lcom/twitter/android/GalleryActivity;->A:I

    iget v4, p0, Lcom/twitter/android/GalleryActivity;->B:I

    iget v5, p0, Lcom/twitter/android/GalleryActivity;->C:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1591
    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 1594
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    return-void

    .line 1594
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1598
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    const/4 v1, 0x0

    sget-object v2, Lcom/twitter/android/mu;->TweetView:[I

    const v3, 0x7f0100c7

    .line 1604
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/twitter/android/GalleryActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1606
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 1608
    const/16 v3, 0xc

    const/4 v4, -0x3

    .line 1610
    invoke-static {v4}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v4

    .line 1608
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 1611
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 1614
    iget-object v5, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v5}, Lcom/twitter/library/widget/TweetView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    iput v2, p0, Lcom/twitter/android/GalleryActivity;->A:I

    .line 1616
    const v2, 0x7f0f020e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/GalleryActivity;->B:I

    .line 1618
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1625
    :goto_0
    const v1, 0x7f0f020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/GalleryActivity;->C:I

    .line 1627
    return-void

    .line 1620
    :cond_0
    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/GalleryActivity;->A:I

    .line 1622
    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/GalleryActivity;->B:I

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->q:Z

    if-nez v0, :cond_0

    .line 1704
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->q:Z

    .line 1707
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    if-nez v0, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    invoke-static {p0, v0}, Lcom/twitter/android/geo/places/d;->a(Landroid/content/Context;Lcom/twitter/model/geo/TwitterPlace;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1839
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    goto :goto_0
.end method

.method private s()V
    .locals 6

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    .line 1866
    :goto_0
    return-void

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ac:Lcom/twitter/model/core/am;

    if-eqz v0, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->f:Lcom/twitter/library/api/PromotedEvent;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1849
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "screen_name"

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->ac:Lcom/twitter/model/core/am;

    iget-object v2, v2, Lcom/twitter/model/core/am;->d:Ljava/lang/String;

    .line 1850
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v3, 0x5

    .line 1853
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1854
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, "gallery"

    .line 1855
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, "media_tag_summary"

    .line 1856
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 1851
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 1849
    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1865
    :cond_1
    :goto_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/xo;->a(Z)V

    .line 1860
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->a()Z

    goto :goto_1
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1869
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    new-instance v1, Lcom/twitter/android/ge;

    invoke-direct {v1, p0}, Lcom/twitter/android/ge;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1881
    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 2038
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tw"

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    .line 2039
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 2040
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x23c1

    .line 2038
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2042
    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)Lcef;
    .locals 6

    .prologue
    .line 1546
    new-instance v0, Lcef;

    new-instance v1, Lcem;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    .line 1547
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcem;-><init>(ILjava/util/List;J)V

    invoke-direct {v0, p0, v1}, Lcef;-><init>(Landroid/content/Context;Lcem;)V

    .line 1546
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 403
    const v1, 0x7f040283

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 404
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 405
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 406
    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1527
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->i(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1528
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1529
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 1530
    iget-object v3, v0, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcug;->d(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1531
    new-instance v3, Lcef;

    new-instance v4, Lcem;

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    .line 1533
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v4, v5, v6, v8, v9}, Lcem;-><init>(ILjava/util/List;J)V

    invoke-direct {v3, p0, v4}, Lcef;-><init>(Landroid/content/Context;Lcem;)V

    .line 1534
    iget-wide v4, v0, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1537
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1540
    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_1
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 1067
    iput p1, p0, Lcom/twitter/android/GalleryActivity;->aa:F

    .line 1070
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 1073
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1074
    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setTranslationY(F)V

    .line 1081
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1084
    :cond_1
    return-void

    .line 1076
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    neg-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1077
    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/ToolBar;->setTranslationY(F)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1656
    if-nez p1, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->d()V

    .line 1662
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->requestFocus()Z

    .line 1672
    :cond_1
    return-void

    .line 1658
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->e()V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    .line 929
    packed-switch p2, :pswitch_data_0

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 931
    :pswitch_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    const v1, 0x7f130801

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 934
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 935
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    .line 937
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v1}, Lcug;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 936
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/twitter/android/GalleryActivity;->a(JLjava/util/List;Ljava/util/Set;)V

    .line 938
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    .line 939
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->b()V

    goto :goto_0

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 1275
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    new-instance v0, Lbsm;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    iget-wide v2, p0, Lcom/twitter/android/GalleryActivity;->K:J

    invoke-direct {v0, p0, v1, v2, v3}, Lbsm;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1286
    :goto_0
    return-void

    .line 1279
    :cond_0
    check-cast p1, Lcom/twitter/android/go;

    invoke-virtual {p1}, Lcom/twitter/android/go;->b()Ljava/util/List;

    move-result-object v0

    .line 1280
    iget-boolean v1, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/twitter/android/GalleryActivity;->Y:Z

    if-nez v1, :cond_1

    .line 1281
    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->Z:Ljava/util/List;

    goto :goto_0

    .line 1283
    :cond_1
    invoke-direct {p0, v0}, Lcom/twitter/android/GalleryActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 4

    .prologue
    .line 1767
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 1768
    packed-switch p2, :pswitch_data_0

    .line 1787
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 1770
    check-cast v0, Lbrr;

    .line 1771
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v0}, Lbrr;->b()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 1772
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1774
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1775
    const v0, 0x7f0a0524

    .line 1780
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1777
    :cond_1
    const v0, 0x7f0a0523

    .line 1778
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v1

    const v2, 0x7f130801

    invoke-virtual {v1, v2}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbjl;->b(Z)Lbjl;

    goto :goto_1

    .line 1768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1024
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a00c2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/GalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a00c1

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(Lzz;Z)V
    .locals 0

    .prologue
    .line 1426
    invoke-virtual {p1, p2}, Lzz;->a(Z)V

    .line 1427
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 2027
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->c(Z)V

    .line 2028
    return-void

    .line 2027
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ZJLjava/lang/String;Lcss;)V
    .locals 6

    .prologue
    .line 2033
    if-eqz p1, :cond_0

    const/4 v1, 0x6

    :goto_0
    move-object v0, p0

    move-wide v2, p2

    move-object v4, p5

    move-object v5, p4

    .line 2034
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/GalleryActivity;->a(IJLcss;Ljava/lang/String;)V

    .line 2035
    return-void

    .line 2033
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 862
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 863
    const v1, 0x7f1307d9

    if-ne v0, v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    invoke-virtual {v0}, Lcom/twitter/android/gn;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    invoke-virtual {v0, v2}, Lcom/twitter/android/gn;->cancel(Z)Z

    .line 867
    :cond_0
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/GalleryActivity;->a:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    new-instance v0, Lcom/twitter/android/gn;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gn;-><init>(Landroid/content/Context;Lzv;)V

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    .line 869
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    new-array v1, v2, [Lzz;

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget v4, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-virtual {v3, v4}, Lzv;->b(I)Lzz;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/android/gn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    move v0, v2

    .line 924
    :goto_1
    return v0

    .line 871
    :cond_1
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    const v1, 0x7f0a071b

    .line 872
    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/GalleryActivity;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, v3}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "%s:%s:%s:"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->X:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, ""

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "gallery"

    aput-object v5, v3, v4

    .line 874
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 873
    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 876
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 879
    :cond_2
    const v1, 0x7f1307d8

    if-ne v0, v1, :cond_7

    .line 880
    const/4 v0, 0x0

    .line 884
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-nez v1, :cond_4

    .line 885
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    if-eqz v1, :cond_3

    .line 886
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->E:Ljava/lang/String;

    .line 905
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    .line 906
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {v1, v0, v5}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    .line 908
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 909
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 906
    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 910
    goto :goto_1

    .line 889
    :cond_4
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 890
    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v3

    .line 891
    if-eqz v1, :cond_6

    .line 892
    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    .line 895
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 896
    iget-object v4, v0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 897
    iget-object v0, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    goto :goto_2

    .line 901
    :cond_6
    if-eqz v3, :cond_3

    .line 902
    iget-object v0, v3, Lcom/twitter/model/core/MediaEntity;->E:Ljava/lang/String;

    goto :goto_2

    .line 912
    :cond_7
    const v1, 0x7f130801

    if-ne v0, v1, :cond_9

    .line 913
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a06e3

    .line 914
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 915
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 916
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 917
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 918
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 919
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 924
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto/16 :goto_1

    .line 920
    :cond_9
    const v1, 0x7f1307cd

    if-ne v0, v1, :cond_8

    .line 921
    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->showDialog(I)V

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 808
    const v0, 0x7f140011

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 809
    const v0, 0x7f140025

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 810
    const v0, 0x7f14000c

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 811
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 12

    .prologue
    const v11, 0x7f1307d8

    const v10, 0x7f1307cd

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 817
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Lcyg;)I

    move-result v1

    .line 818
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 819
    instance-of v4, p1, Lcom/twitter/library/widget/StatusToolBar;

    if-eqz v4, :cond_0

    .line 820
    check-cast p1, Lcom/twitter/library/widget/StatusToolBar;

    invoke-virtual {p1, v3}, Lcom/twitter/library/widget/StatusToolBar;->setDisplayShowStatusBarEnabled(Z)V

    .line 822
    :cond_0
    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget v5, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 823
    invoke-virtual {v4, v5}, Lzv;->a(I)Laab;

    move-result-object v4

    move-object v5, v4

    .line 824
    :goto_0
    if-eqz v5, :cond_b

    .line 825
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->N()Lcom/twitter/library/media/manager/l;

    move-result-object v1

    iget-object v4, v5, Laab;->c:Lcom/twitter/media/request/b;

    invoke-virtual {v1, v4}, Lcom/twitter/library/media/manager/l;->b(Lcom/twitter/media/request/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 826
    :goto_1
    const v4, 0x7f1307d9

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v6

    if-eqz v1, :cond_5

    .line 827
    invoke-virtual {v5}, Laab;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    .line 828
    invoke-virtual {v4}, Lcom/twitter/android/gn;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v7, :cond_5

    :cond_1
    move v4, v2

    .line 827
    :goto_2
    invoke-virtual {v6, v4}, Lbjl;->c(Z)Lbjl;

    move-result-object v4

    .line 829
    invoke-virtual {v5}, Laab;->c()Z

    move-result v6

    invoke-virtual {v4, v6}, Lbjl;->b(Z)Lbjl;

    .line 831
    iget-boolean v4, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-nez v4, :cond_6

    .line 832
    :cond_2
    invoke-virtual {v0, v11}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbjl;->b(Z)Lbjl;

    .line 833
    invoke-virtual {v0, v10}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbjl;->b(Z)Lbjl;

    .line 855
    :goto_3
    const/4 v0, 0x2

    .line 857
    :goto_4
    return v0

    .line 823
    :cond_3
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_0

    :cond_4
    move v1, v3

    .line 825
    goto :goto_1

    :cond_5
    move v4, v3

    .line 828
    goto :goto_2

    .line 835
    :cond_6
    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    sget-object v6, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 836
    invoke-static {v4, v6}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v4

    .line 837
    iget-object v6, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    .line 838
    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcuk;->a(Ljava/util/List;J)Z

    move-result v4

    .line 839
    const v6, 0x7f130801

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v6

    invoke-virtual {v6, v4}, Lbjl;->b(Z)Lbjl;

    .line 840
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v4

    if-nez v4, :cond_a

    .line 843
    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    iget-wide v6, v4, Lcom/twitter/model/core/Tweet;->b:J

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    move v4, v2

    .line 844
    :goto_5
    invoke-virtual {v0, v10}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v6

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_6
    invoke-virtual {v6, v4}, Lbjl;->b(Z)Lbjl;

    .line 846
    invoke-virtual {v0, v11}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 847
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 848
    invoke-virtual {v5}, Laab;->b()I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 847
    :goto_7
    invoke-virtual {v0, v2}, Lbjl;->b(Z)Lbjl;

    move-result-object v0

    .line 849
    invoke-virtual {v0, v1}, Lbjl;->c(Z)Lbjl;

    goto :goto_3

    :cond_7
    move v4, v3

    .line 843
    goto :goto_5

    :cond_8
    move v4, v3

    .line 844
    goto :goto_6

    :cond_9
    move v2, v3

    .line 848
    goto :goto_7

    .line 851
    :cond_a
    invoke-virtual {v0, v10}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbjl;->b(Z)Lbjl;

    .line 852
    invoke-virtual {v0, v11}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbjl;->b(Z)Lbjl;

    goto :goto_3

    :cond_b
    move v0, v1

    .line 857
    goto :goto_4
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b(I)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 972
    iget-object v7, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    .line 973
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v8

    .line 975
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 976
    new-instance v0, Lcom/twitter/android/gi;

    .line 977
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {p0, v10}, Lcom/twitter/android/GalleryActivity;->d(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gi;-><init>(Lcom/twitter/android/GalleryActivity;Landroid/app/Activity;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 976
    invoke-virtual {v7, v0}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 989
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/twitter/library/widget/TweetView;->setAutoLink(Z)V

    .line 1005
    :goto_0
    if-eqz v8, :cond_0

    .line 1006
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->L:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 1015
    :cond_0
    :goto_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 1016
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v9}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 1020
    :goto_2
    return-void

    .line 991
    :cond_1
    new-instance v0, Lcom/twitter/android/gj;

    invoke-direct {v0, p0}, Lcom/twitter/android/gj;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-virtual {v7, v0}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 1003
    invoke-virtual {v7, v9}, Lcom/twitter/library/widget/TweetView;->setAutoLink(Z)V

    goto :goto_0

    .line 1008
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->O:Z

    if-eqz v0, :cond_3

    .line 1009
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->P:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1

    .line 1012
    :cond_3
    invoke-virtual {v8, v5}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1

    .line 1018
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v10}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 13

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 413
    invoke-static {v11}, Lcvx;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    .line 414
    const-string/jumbo v0, "photo_impression"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->U:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "photo:impression"

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->U:Ljava/lang/String;

    .line 419
    :cond_0
    const-string/jumbo v0, "association"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 420
    const-string/jumbo v0, "dm"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    .line 421
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    .line 424
    const v0, 0x7f1305e9

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->ad:Landroid/view/ViewGroup;

    .line 425
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ad:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    const v0, 0x7f1302d3

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/widget/SlidingPanel;

    .line 428
    new-instance v0, Lcom/twitter/android/xo;

    .line 429
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const v5, 0x7f0200c2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/xo;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/widget/SlidingPanel;I)V

    .line 431
    invoke-virtual {v0, p0}, Lcom/twitter/android/xo;->a(Lcom/twitter/android/xs;)V

    .line 432
    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/twitter/library/widget/SlidingPanel;->a(I)V

    .line 435
    invoke-virtual {v4, v0}, Lcom/twitter/library/widget/SlidingPanel;->setPanelSlideListener(Lcom/twitter/library/widget/ad;)V

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/twitter/library/widget/SlidingPanel;->setClipChildren(Z)V

    .line 437
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/twitter/library/widget/SlidingPanel;->setFadeMode(I)V

    .line 438
    const/high16 v1, -0x1000000

    invoke-virtual {v4, v1}, Lcom/twitter/library/widget/SlidingPanel;->setCoveredFadeColor(I)V

    .line 439
    iput-object v4, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    .line 441
    const/4 v3, 0x0

    .line 442
    const/4 v2, 0x0

    .line 443
    const/4 v1, 0x0

    .line 444
    const-string/jumbo v4, "li"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 445
    const-string/jumbo v3, "li"

    invoke-virtual {v11, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 446
    const-string/jumbo v4, "list_starting_index"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 447
    const-string/jumbo v2, "list_starting_index"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    .line 477
    :goto_1
    const-string/jumbo v1, "media"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    const-string/jumbo v1, "media"

    sget-object v2, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v11, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/MediaEntity;

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    .line 481
    :cond_1
    const-string/jumbo v1, "source_tweet_id"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    if-eqz v8, :cond_2

    .line 483
    const-string/jumbo v1, "sourceStatusId"

    const-string/jumbo v2, "source_tweet_id"

    const-wide/16 v4, -0x1

    .line 484
    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 483
    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 488
    :cond_2
    const-string/jumbo v1, "promoted_content"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    const-string/jumbo v1, "promoted_content"

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 490
    invoke-static {v11, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcss;

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->m:Lcss;

    .line 493
    :cond_3
    const-string/jumbo v1, "etc"

    const/4 v2, 0x1

    .line 494
    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 496
    const-string/jumbo v1, "context"

    const/4 v2, -0x1

    .line 497
    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/GalleryActivity;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->X:Ljava/lang/String;

    .line 498
    const-string/jumbo v1, "item"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->x:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 500
    new-instance v1, Lzv;

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->u:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->S:Laah;

    iget-object v5, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    new-instance v6, Laaa;

    invoke-direct {v6}, Laaa;-><init>()V

    move-object v2, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lzv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Laah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Laaa;Lzw;)V

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    .line 503
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v1, p0}, Lzv;->a(Lcwb;)V

    .line 504
    const v1, 0x7f130362

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 506
    const-string/jumbo v2, "page_cache_size"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 507
    const-string/jumbo v2, "page_cache_size"

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 511
    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 512
    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 513
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 514
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 515
    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    .line 517
    new-instance v2, Lcom/twitter/android/gd;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/gd;-><init>(Lcom/twitter/android/GalleryActivity;Lcom/twitter/android/xo;)V

    .line 531
    new-instance v3, Landroid/support/v4/view/GestureDetectorCompat;

    .line 532
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 533
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    .line 535
    const v2, 0x7f1305ea

    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    .line 536
    const v2, 0x7f1305ec

    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/twitter/android/GalleryActivity;->d:Landroid/widget/LinearLayout;

    .line 537
    const v2, 0x7f1305eb

    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    .line 538
    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    new-instance v4, Lcom/twitter/android/gf;

    invoke-direct {v4, p0, v3, v1}, Lcom/twitter/android/gf;-><init>(Lcom/twitter/android/GalleryActivity;Landroid/support/v4/view/GestureDetectorCompat;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->t()V

    .line 548
    const v1, 0x7f1305ed

    invoke-virtual {p0, v1}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->t:Landroid/widget/TextView;

    .line 550
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    const v2, 0x7f1305ef

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/widget/TweetView;

    .line 551
    const/4 v2, 0x1

    .line 552
    iget-boolean v3, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-eqz v3, :cond_17

    .line 553
    const/4 v2, 0x0

    move v3, v2

    .line 555
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setHideInlineActions(Z)V

    .line 556
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setHideMediaTagSummary(Z)V

    .line 557
    if-eqz v12, :cond_4

    .line 558
    invoke-virtual {v1, p0}, Lcom/twitter/library/widget/TweetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setAlwaysStripMediaUrls(Z)V

    .line 561
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/TweetView;->setPromotedBadgeEnabled(Z)V

    .line 562
    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    .line 564
    const v2, 0x7f1304d6

    invoke-virtual {p0, v2}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/av/GalleryVideoChromeView;

    iput-object v2, p0, Lcom/twitter/android/GalleryActivity;->c:Lcom/twitter/android/av/GalleryVideoChromeView;

    .line 566
    new-instance v2, Lcom/twitter/android/bm;

    invoke-direct {v2, p0}, Lcom/twitter/android/bm;-><init>(Lcom/twitter/android/bn;)V

    .line 569
    const v4, 0x7f05002e

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 570
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 571
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 572
    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 573
    iput-object v4, p0, Lcom/twitter/android/GalleryActivity;->g:Landroid/view/animation/Animation;

    .line 575
    const v4, 0x7f050030

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 576
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 577
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 578
    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    iput-object v4, p0, Lcom/twitter/android/GalleryActivity;->h:Landroid/view/animation/Animation;

    .line 581
    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    const/16 v4, 0x600

    invoke-static {v2, v4}, Lcom/twitter/util/c;->a(Landroid/view/View;I)V

    .line 583
    if-nez p1, :cond_11

    .line 585
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    .line 587
    const-string/jumbo v2, "tagged_user_list"

    const/4 v4, 0x0

    .line 588
    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/twitter/android/xo;->a:Z

    .line 598
    :goto_4
    if-eqz v8, :cond_12

    .line 599
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 600
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 623
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 624
    const v1, 0x7f130143

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->X:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "gallery"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;ILcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/MediaActionBarFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->s:Lcom/twitter/android/MediaActionBarFragment;

    .line 627
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v0

    invoke-virtual {v0}, Lcay;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    new-instance v0, Lcav;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcav;-><init>(Landroid/widget/FrameLayout;)V

    .line 631
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcav;->a(Ljava/util/List;)V

    .line 632
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->s:Lcom/twitter/android/MediaActionBarFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcav;)V

    .line 636
    :cond_6
    const-string/jumbo v0, "saved_task"

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gn;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    .line 638
    const-string/jumbo v0, "sticker_repos"

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 639
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 640
    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    .line 644
    :cond_7
    new-instance v6, Lcom/twitter/android/gp;

    new-instance v0, Lcom/twitter/android/vv;

    .line 645
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v1, 0x9

    .line 646
    invoke-direct {p0, v1}, Lcom/twitter/android/GalleryActivity;->d(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/GalleryActivity;->w:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vv;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    invoke-direct {v6, v0}, Lcom/twitter/android/gp;-><init>(Lcom/twitter/library/view/aa;)V

    iput-object v6, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    .line 650
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403b0

    .line 651
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->L:Landroid/view/View;

    .line 652
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->L:Landroid/view/View;

    const v1, 0x7f13075c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->M:Landroid/view/View;

    .line 653
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->M:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    const v0, 0x7f1305ee

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    .line 657
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->N:Lcom/twitter/ui/widget/TwitterButton;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    const-string/jumbo v0, "vine_fullscreen_4595"

    invoke-static {v0}, Lcom/twitter/config/c;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->O:Z

    .line 662
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403af

    .line 663
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->P:Landroid/view/View;

    .line 666
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040402

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 667
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    .line 668
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->T:Lcom/twitter/android/gp;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->R:Z

    .line 671
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 672
    new-instance v0, Lcom/twitter/library/av/b;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    .line 675
    :cond_8
    const-string/jumbo v0, "show_tw"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "statusId"

    .line 676
    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "prj"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_9
    const/4 v0, 0x1

    .line 677
    :goto_6
    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->S:Laah;

    invoke-static {}, Lzx;->a()Lzy;

    move-result-object v2

    .line 678
    invoke-virtual {v2, v0}, Lzy;->a(Z)Lzy;

    move-result-object v0

    const-string/jumbo v2, "tw_link"

    const/4 v3, 0x0

    .line 679
    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lzy;->a(I)Lzy;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lzy;->a()Lzx;

    move-result-object v0

    .line 677
    invoke-virtual {v1, v0}, Laah;->a(Lzx;)V

    .line 682
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->m()V

    .line 684
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    if-eqz v0, :cond_a

    .line 686
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->h()V

    .line 688
    :cond_a
    :goto_7
    return-void

    .line 413
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 449
    :cond_c
    iget-boolean v4, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-eqz v4, :cond_d

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    goto/16 :goto_1

    .line 451
    :cond_d
    const-string/jumbo v1, "statusId"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 452
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 453
    const-string/jumbo v4, "statusId"

    const-wide/16 v6, 0x0

    invoke-virtual {v11, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/GalleryActivity;->K:J

    .line 454
    const-string/jumbo v4, "uri"

    iget-wide v6, p0, Lcom/twitter/android/GalleryActivity;->K:J

    .line 455
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/twitter/library/provider/cn;->b(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 454
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    const-string/jumbo v4, "projection"

    sget-object v5, Lcho;->b:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    goto/16 :goto_1

    .line 458
    :cond_e
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 459
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 460
    const-string/jumbo v4, "uri"

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    const-string/jumbo v4, "projection"

    const-string/jumbo v5, "prj"

    .line 462
    invoke-virtual {v11, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 461
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    const-string/jumbo v4, "selection"

    const-string/jumbo v5, "sel"

    .line 464
    invoke-virtual {v11, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v4, "selectionArgs"

    const-string/jumbo v5, "selArgs"

    .line 467
    invoke-virtual {v11, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    const-string/jumbo v4, "orderBy"

    const-string/jumbo v5, "orderBy"

    .line 469
    invoke-virtual {v11, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v4, "id"

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v11, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/GalleryActivity;->p:J

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    goto/16 :goto_1

    .line 473
    :cond_f
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->finish()V

    goto/16 :goto_7

    .line 509
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 590
    :cond_11
    const-string/jumbo v2, "cv"

    iget-boolean v4, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    .line 592
    const-string/jumbo v2, "current_position"

    iget v4, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 594
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/android/GalleryActivity;->ah:Z

    .line 595
    invoke-virtual {v0, p1}, Lcom/twitter/android/xo;->a(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 601
    :cond_12
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-eqz v0, :cond_13

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 603
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lzv;->a(Lcom/twitter/model/core/MediaEntity;Z)V

    .line 604
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->p()V

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->c(Z)V

    .line 606
    const v0, 0x7f0a040f

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(I)V

    goto/16 :goto_5

    .line 607
    :cond_13
    if-eqz v10, :cond_5

    .line 608
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v0, v10}, Lzv;->b(Ljava/util/List;)V

    .line 609
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/TweetView;->setVisibility(I)V

    .line 610
    const/4 v3, 0x0

    .line 611
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 612
    const v0, 0x7f0a08f6

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(I)V

    goto/16 :goto_5

    .line 616
    :cond_14
    if-nez v9, :cond_15

    .line 617
    invoke-virtual {p0, v9}, Lcom/twitter/android/GalleryActivity;->onPageSelected(I)V

    .line 619
    :cond_15
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 676
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_17
    move v3, v2

    goto/16 :goto_3

    :cond_18
    move-object v8, v1

    move v9, v2

    move-object v10, v3

    goto/16 :goto_1
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 963
    if-eqz p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TweetView;->setVisibility(I)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->n:Lcom/twitter/library/widget/TweetView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TweetView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->f:Lcom/twitter/library/api/PromotedEvent;

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    .line 2021
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    .line 2020
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 2023
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 1040
    iget v0, p0, Lcom/twitter/android/GalleryActivity;->W:I

    if-ne p1, v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1042
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x600

    .line 1635
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    if-ne v0, p1, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1638
    :cond_0
    if-eqz p1, :cond_3

    .line 1639
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/twitter/util/c;->a(Landroid/view/View;I)V

    .line 1641
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    if-nez v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/twitter/util/c;->a(Landroid/view/View;I)V

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1651
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    goto :goto_0

    .line 1646
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1647
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1648
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->e:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method public d()Lcom/twitter/android/av/GalleryVideoChromeView;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->c:Lcom/twitter/android/av/GalleryVideoChromeView;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    const v2, 0x7f05003b

    .line 1050
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->o()V

    .line 1063
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->finish()V

    .line 1055
    iget v0, p0, Lcom/twitter/android/GalleryActivity;->aa:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1056
    const v0, 0x7f05003d

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/GalleryActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1059
    :cond_1
    const v0, 0x7f05003c

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/GalleryActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->ab:Z

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->i()V

    .line 781
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-eqz v0, :cond_1

    .line 777
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 779
    :cond_1
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->o()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1742
    sparse-switch p1, :sswitch_data_0

    .line 1757
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/xo;->a(IILandroid/content/Intent;)V

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1744
    :sswitch_0
    const/16 v0, 0xa

    if-ne v0, p2, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->finish()V

    goto :goto_0

    .line 1750
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    new-instance v0, Lcom/twitter/android/gn;

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gn;-><init>(Landroid/content/Context;Lzv;)V

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    .line 1752
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    const/4 v1, 0x1

    new-array v1, v1, [Lzz;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget v4, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-virtual {v3, v4}, Lzv;->b(I)Lzz;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/gn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1742
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x23c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/xo;->a(Z)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->i()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1733
    invoke-direct {p0}, Lcom/twitter/android/GalleryActivity;->u()V

    .line 1734
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1738
    :sswitch_0
    return-void

    .line 1727
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1305ee -> :sswitch_0
        0x7f13075c -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 749
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 752
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getPanelState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->E:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gh;

    invoke-direct {v1, p0}, Lcom/twitter/android/gh;-><init>(Lcom/twitter/android/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 770
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1804
    .line 1805
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1829
    :goto_0
    return-object v0

    .line 1807
    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    if-eqz v0, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    if-nez v0, :cond_0

    .line 1812
    const-string/jumbo v0, "ANATOMY-371: attempting to delete a null DM photo"

    .line 1816
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 1817
    goto :goto_0

    .line 1814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ANATOMY-371: attempting to delete DM photo #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/GalleryActivity;->j:Lcom/twitter/model/core/MediaEntity;

    iget-wide v2, v2, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_2

    .line 1819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ANATOMY-371: attempting to delete a photo but mTweet is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->i:Lcom/twitter/model/core/Tweet;

    invoke-static {p0, v0, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/model/core/Tweet;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1805
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1263
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1264
    const-string/jumbo v0, "projection"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1265
    const-string/jumbo v0, "selection"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1266
    const-string/jumbo v0, "selectionArgs"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1267
    const-string/jumbo v0, "orderBy"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1268
    const-string/jumbo v0, "sourceStatusId"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v0, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1269
    new-instance v1, Lcom/twitter/android/go;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/go;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1229
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    if-eqz v0, :cond_1

    .line 1238
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 1239
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v0}, Lzv;->d()V

    .line 1240
    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1244
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1245
    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 1246
    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->o:Landroid/support/v4/view/ViewPager;

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    invoke-virtual {v0}, Lcom/twitter/library/av/b;->a()V

    .line 1251
    iput-object v1, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    if-eqz v0, :cond_4

    .line 1255
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->ae:Lzo;

    invoke-virtual {v0}, Lzo;->c()V

    .line 1258
    :cond_4
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 1259
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/GalleryActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
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
    .line 1336
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzv;->a(Ljava/util/List;)V

    .line 1339
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 1631
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 1343
    return-void
.end method

.method public onPageSelected(I)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1347
    iget-object v4, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    .line 1348
    invoke-virtual {v4}, Lzv;->getCount()I

    move-result v0

    .line 1349
    if-lez v0, :cond_6

    .line 1351
    if-le v0, v3, :cond_7

    .line 1352
    const v1, 0x7f0a0654

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    .line 1353
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1352
    invoke-virtual {p0, v1, v5}, Lcom/twitter/android/GalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1358
    :goto_0
    invoke-virtual {v4, p1}, Lzv;->b(I)Lzz;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_6

    .line 1360
    iget v5, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 1366
    iget v1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/GalleryActivity;->ah:Z

    if-eqz v1, :cond_8

    :cond_0
    move v1, v3

    .line 1367
    :goto_1
    iput-boolean v2, p0, Lcom/twitter/android/GalleryActivity;->ah:Z

    .line 1368
    invoke-virtual {v0}, Lzz;->b()Lcom/twitter/model/core/Tweet;

    move-result-object v6

    .line 1369
    if-eqz v6, :cond_2

    .line 1372
    iget-object v7, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    iget-boolean v8, v7, Lcom/twitter/android/xo;->b:Z

    or-int/2addr v8, v1

    iput-boolean v8, v7, Lcom/twitter/android/xo;->b:Z

    if-eqz v8, :cond_1

    .line 1373
    iget-object v7, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v7}, Lcom/twitter/android/xo;->b()V

    .line 1375
    :cond_1
    invoke-direct {p0, v6}, Lcom/twitter/android/GalleryActivity;->d(Lcom/twitter/model/core/Tweet;)V

    .line 1376
    invoke-direct {p0, v6}, Lcom/twitter/android/GalleryActivity;->b(Lcom/twitter/model/core/Tweet;)V

    .line 1378
    if-eq v5, v9, :cond_2

    .line 1379
    invoke-direct {p0, v5, p1, v6}, Lcom/twitter/android/GalleryActivity;->a(IILcom/twitter/model/core/Tweet;)V

    .line 1382
    sget-object v7, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    invoke-direct {p0, v6, v7}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1386
    :cond_2
    if-eqz v1, :cond_5

    .line 1387
    invoke-virtual {v4, v5}, Lzv;->b(I)Lzz;

    move-result-object v1

    .line 1388
    if-eqz v1, :cond_3

    .line 1389
    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/GalleryActivity;->a(Lzz;Z)V

    .line 1392
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/GalleryActivity;->a(Lzz;Z)V

    .line 1395
    if-eq v5, v9, :cond_4

    instance-of v1, v0, Laac;

    if-eqz v1, :cond_4

    .line 1397
    check-cast v0, Laac;

    invoke-virtual {v0}, Laac;->e()V

    .line 1400
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    if-eqz v0, :cond_5

    .line 1402
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->af:Lcom/twitter/library/av/b;

    new-instance v1, Lcom/twitter/library/av/af;

    .line 1403
    invoke-virtual {v4}, Lzv;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/library/av/af;-><init>(Ljava/util/List;)V

    .line 1402
    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/av/b;->a(Lcom/twitter/library/av/ac;I)V

    .line 1409
    :cond_5
    iget v0, p0, Lcom/twitter/android/GalleryActivity;->W:I

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    .line 1410
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1411
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->V:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1415
    :cond_6
    iput p1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 1416
    invoke-virtual {p0}, Lcom/twitter/android/GalleryActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1417
    return-void

    .line 1356
    :cond_7
    const v0, 0x7f0a08f6

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 1366
    goto :goto_1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 716
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 718
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/xo;->a(Z)V

    .line 722
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    if-eqz v0, :cond_1

    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->a(I)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->a(I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 1210
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onRestart()V

    .line 1211
    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    invoke-virtual {p0, v0}, Lcom/twitter/android/GalleryActivity;->c(Z)V

    .line 1212
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v0}, Lzv;->c()V

    .line 1214
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget v1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-virtual {v0, v1}, Lzv;->b(I)Lzz;

    move-result-object v0

    .line 1216
    if-eqz v0, :cond_0

    .line 1217
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Lzz;Z)V

    .line 1219
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 731
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 732
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    iget v1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    .line 734
    invoke-virtual {v0, v1}, Lzv;->b(I)Lzz;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lzz;->b()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/GalleryActivity;->d(Lcom/twitter/model/core/Tweet;)V

    .line 739
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1193
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1194
    const-string/jumbo v0, "cv"

    iget-boolean v1, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1195
    const-string/jumbo v0, "current_position"

    iget v1, p0, Lcom/twitter/android/GalleryActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1196
    const-string/jumbo v0, "dm"

    iget-boolean v1, p0, Lcom/twitter/android/GalleryActivity;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1197
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0, p1}, Lcom/twitter/android/xo;->b(Landroid/os/Bundle;)V

    .line 1198
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->f:Lzv;

    invoke-virtual {v0}, Lzv;->b()V

    .line 1224
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onStop()V

    .line 1225
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1202
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onWindowFocusChanged(Z)V

    .line 1203
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/GalleryActivity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->D:Lcom/twitter/android/xo;

    invoke-virtual {v0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/twitter/android/GalleryActivity;->r:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    .line 1206
    :cond_0
    return-void
.end method

.method protected r_()V
    .locals 2

    .prologue
    .line 956
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->r_()V

    .line 957
    const-string/jumbo v0, "saved_task"

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->y:Lcom/twitter/android/gn;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string/jumbo v0, "sticker_repos"

    iget-object v1, p0, Lcom/twitter/android/GalleryActivity;->ag:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/GalleryActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    return-void
.end method

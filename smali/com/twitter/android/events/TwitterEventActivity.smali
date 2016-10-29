.class public abstract Lcom/twitter/android/events/TwitterEventActivity;
.super Lcom/twitter/android/ScrollingHeaderActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/fj;
.implements Lcom/twitter/android/ph;
.implements Lcom/twitter/media/request/c;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Lcom/twitter/media/ui/image/BackgroundImageView;

.field private C:Z

.field private D:Lcom/twitter/android/kj;

.field private E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/twitter/android/ns;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Lcom/twitter/internal/android/widget/ToolBar;

.field private P:Landroid/widget/TextView;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Ljava/io/File;

.field private T:Ljava/lang/String;

.field private U:J

.field private V:J

.field private W:Landroid/view/ViewGroup;

.field private X:Landroid/view/ViewGroup;

.field private Y:Z

.field private Z:I

.field protected g:Z

.field protected h:Landroid/graphics/drawable/Drawable;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/twitter/android/widget/TopicView$TopicData;

.field private l:Lcom/twitter/library/provider/dm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "twitter://events/default"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->a:Landroid/net/Uri;

    .line 98
    const-string/jumbo v0, "twitter://events/commentary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->b:Landroid/net/Uri;

    .line 99
    const-string/jumbo v0, "twitter://events/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->c:Landroid/net/Uri;

    .line 100
    const-string/jumbo v0, "twitter://events/photos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->d:Landroid/net/Uri;

    .line 101
    const-string/jumbo v0, "twitter://events/videos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->e:Landroid/net/Uri;

    .line 102
    const-string/jumbo v0, "twitter://events/matches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/TwitterEventActivity;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/twitter/android/ScrollingHeaderActivity;-><init>()V

    .line 162
    iput-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    .line 163
    iput v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    return-void
.end method

.method private D()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 256
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/events/TwitterEventActivity;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    return v0
.end method

.method public static a(Landroid/content/Context;J)Ljava/io/File;
    .locals 5

    .prologue
    .line 578
    invoke-static {p0}, Ldbt;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 579
    if-nez v1, :cond_0

    .line 580
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_event_header.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 589
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 596
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 592
    :goto_1
    :try_start_2
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 594
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 591
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/android/events/TwitterEventActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Lcom/twitter/util/collection/r;ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/r",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const v6, 0x7f0a0738

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 886
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 901
    sget-object v1, Lcom/twitter/android/events/TwitterEventActivity;->d:Landroid/net/Uri;

    .line 902
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "highlights"

    .line 901
    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 908
    :goto_1
    return v0

    .line 887
    :sswitch_0
    const-string/jumbo v5, "videos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "media"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "photos"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 889
    :pswitch_0
    sget-object v1, Lcom/twitter/android/events/TwitterEventActivity;->e:Landroid/net/Uri;

    const v2, 0x7f0a08a6

    .line 890
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "highlights"

    .line 889
    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 894
    :pswitch_1
    sget-object v1, Lcom/twitter/android/events/TwitterEventActivity;->c:Landroid/net/Uri;

    .line 895
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "highlights"

    .line 894
    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    :cond_1
    move v0, v1

    .line 908
    goto :goto_1

    .line 887
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3af3777f -> :sswitch_2
        -0x30ad84a8 -> :sswitch_0
        0x62f6fe4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ae()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getMeasuredHeight()I

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private af()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->getMeasuredHeight()I

    move-result v0

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/events/TwitterEventActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/events/TwitterEventActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 556
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/BackgroundImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 561
    iget-wide v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->V:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 564
    iput-wide v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->V:J

    .line 565
    iput-wide v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    .line 566
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    invoke-static {v0, v2, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    .line 567
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->R:Z

    .line 568
    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->R:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-static {p1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->b(Lcom/twitter/media/request/b;)Z

    goto :goto_0

    .line 567
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/twitter/android/events/TwitterEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/events/TwitterEventActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic d(Lcom/twitter/android/events/TwitterEventActivity;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    return v0
.end method

.method static synthetic e(Lcom/twitter/android/events/TwitterEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/events/TwitterEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/events/TwitterEventActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method protected B()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method protected C()I
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/UnboundedFrameLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    invoke-virtual {v1}, Lcom/twitter/android/widget/UnboundedFrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->r:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected a(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 574
    const v0, 0x7f0f01ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lcom/twitter/android/events/g;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->p:Lcom/twitter/internal/android/widget/HorizontalListView;

    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->D:Lcom/twitter/android/kj;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/events/g;-><init>(Lcom/twitter/android/events/TwitterEventActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V

    return-object v0
.end method

.method protected a(Ljava/util/List;)Landroid/widget/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 807
    new-instance v0, Lcom/twitter/android/kj;

    invoke-direct {v0, p1}, Lcom/twitter/android/kj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->D:Lcom/twitter/android/kj;

    .line 808
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->D:Lcom/twitter/android/kj;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    .line 262
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 263
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 264
    return-object p2

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;
    .locals 10

    .prologue
    .line 913
    const/4 v2, 0x0

    .line 916
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    const/4 v1, 0x0

    .line 918
    const-class v0, Lcom/twitter/android/events/EventLandingFragment;

    .line 919
    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    .line 946
    :goto_0
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    packed-switch v0, :pswitch_data_0

    .line 952
    const-string/jumbo v0, "unknown"

    move-object v5, v0

    .line 957
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 958
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 962
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->l:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/library/provider/dm;->j(J)V

    .line 963
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const v8, 0x7f0a0396

    .line 966
    invoke-virtual {v0, v8}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const/4 v8, 0x1

    .line 967
    invoke-virtual {v0, v8}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v8, "search_type"

    .line 968
    invoke-virtual {v0, v8, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "fetch_type"

    const/4 v8, 0x5

    .line 969
    invoke-virtual {v0, v2, v8}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "scribe_page"

    iget-object v8, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    .line 970
    invoke-virtual {v0, v2, v8}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "scribe_section"

    .line 971
    invoke-virtual {v0, v2, p4}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "scribe_component"

    iget-object v8, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    .line 972
    invoke-virtual {v0, v2, v8}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v8, "event_header_available"

    iget-boolean v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->g:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 973
    :goto_3
    invoke-virtual {v0, v8, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "q_source"

    .line 974
    invoke-virtual {v0, v2, v5}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "event_id"

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    .line 975
    invoke-virtual {v0, v2, v5}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "event_type"

    iget v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    .line 976
    invoke-virtual {v0, v2, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "fragment_page_number"

    .line 977
    invoke-virtual {v0, v2, p2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "should_shim"

    const/4 v5, 0x0

    .line 978
    invoke-virtual {v0, v2, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "search_id"

    .line 979
    invoke-virtual {v0, v2, v6, v7}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 980
    invoke-static {v4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 981
    const-string/jumbo v2, "query_rewrite_id"

    invoke-virtual {v0, v2, v4}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    .line 984
    :cond_0
    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    const-string/jumbo v2, "data_lookup_id"

    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    .line 988
    :cond_1
    new-instance v2, Lcom/twitter/library/client/ay;

    invoke-direct {v2, p1, v1}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 989
    invoke-virtual {v2, p3}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v1

    .line 990
    invoke-virtual {v1, p4}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v1

    .line 991
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 988
    return-object v0

    .line 920
    :cond_2
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    const/4 v1, 0x1

    .line 922
    const-string/jumbo v3, "official"

    .line 923
    const-class v0, Lcom/twitter/android/events/EventLandingFragment;

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 924
    :cond_3
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const/4 v1, 0x3

    .line 926
    const-string/jumbo v3, "photo"

    .line 927
    const-class v0, Lcom/twitter/android/events/ScrollableEventGridFragment;

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 928
    :cond_4
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 929
    const/4 v1, 0x7

    .line 930
    const-string/jumbo v3, "photo"

    .line 931
    const-class v0, Lcom/twitter/android/events/ScrollableEventGridFragment;

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 932
    :cond_5
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    const/4 v1, -0x1

    .line 934
    const-string/jumbo v3, "video"

    .line 935
    const-class v0, Lcom/twitter/android/events/EventLandingFragment;

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 936
    :cond_6
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 937
    const/16 v1, 0x8

    .line 938
    const-class v0, Lcom/twitter/android/events/EventLandingFragment;

    .line 939
    const-string/jumbo v3, "schedule"

    .line 940
    const-string/jumbo v2, "schedule"

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 942
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :pswitch_0
    const-string/jumbo v0, "spev"

    move-object v5, v0

    .line 949
    goto/16 :goto_1

    .line 960
    :cond_8
    sget-object v0, Lcom/twitter/util/aj;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    goto/16 :goto_2

    .line 972
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 946
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0a0417

    const/4 v2, 0x0

    .line 839
    invoke-static {p1}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 840
    invoke-static {p2}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 841
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 843
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->a:Landroid/net/Uri;

    invoke-virtual {p0, v8}, Lcom/twitter/android/events/TwitterEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "tweets"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 881
    :cond_0
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 848
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_2
    move v1, v0

    .line 879
    goto :goto_0

    .line 849
    :sswitch_0
    const-string/jumbo v7, "matches"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "photos"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "official"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "tweets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 851
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/events/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a08a5

    .line 852
    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_3
    sget-object v6, Lcom/twitter/android/events/TwitterEventActivity;->f:Landroid/net/Uri;

    const-string/jumbo v7, "games"

    invoke-virtual {p0, v6, v1, v0, v7}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 854
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 855
    goto :goto_2

    .line 852
    :cond_3
    const v0, 0x7f0a089f

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 858
    :pswitch_1
    invoke-direct {p0, v4, v1, v3}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/util/collection/r;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    move v0, v1

    .line 859
    goto :goto_2

    .line 862
    :pswitch_2
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->b:Landroid/net/Uri;

    const v6, 0x7f0a0732

    .line 863
    invoke-virtual {p0, v6}, Lcom/twitter/android/events/TwitterEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "commentary"

    .line 862
    invoke-virtual {p0, v0, v1, v6, v7}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 865
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 866
    goto :goto_2

    .line 869
    :pswitch_3
    sget-object v0, Lcom/twitter/android/events/TwitterEventActivity;->a:Landroid/net/Uri;

    .line 870
    invoke-virtual {p0, v8}, Lcom/twitter/android/events/TwitterEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tweets"

    .line 869
    invoke-virtual {p0, v0, v1, v6, v7}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 872
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 873
    goto/16 :goto_2

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3af3777f -> :sswitch_1
        -0x335177de -> :sswitch_3
        -0x2d9d6515 -> :sswitch_2
        0x321e8933 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(I)V

    .line 321
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->D:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 323
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ax;->a(Landroid/support/v4/app/FragmentManager;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/SearchFragment;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/twitter/android/SearchFragment;->m()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 329
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->D:Lcom/twitter/android/kj;

    invoke-virtual {v0, p1}, Lcom/twitter/android/kj;->a(I)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/BackgroundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/android/events/e;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 648
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->f()I

    move-result v0

    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 649
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->b()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/events/TwitterEventActivity;->af()I

    move-result v5

    .line 661
    invoke-direct {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ae()I

    move-result v6

    .line 662
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    invoke-virtual {v0}, Lcom/twitter/android/widget/UnboundedFrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 665
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    move v2, v1

    .line 671
    :goto_2
    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    move v3, v1

    .line 677
    :goto_3
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->b()I

    move-result v7

    if-nez v7, :cond_c

    .line 679
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->a()I

    move-result v0

    if-lez v0, :cond_b

    .line 680
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    .line 695
    :cond_4
    :goto_4
    sub-int v0, v6, v3

    sub-int v2, v0, v5

    .line 696
    sub-int v3, v6, v5

    .line 697
    sub-int v0, v5, v6

    iget v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    add-int/2addr v5, v0

    .line 698
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    if-le v0, v2, :cond_10

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->b()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    if-nez v0, :cond_10

    .line 700
    :cond_5
    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    if-ge v0, v3, :cond_e

    int-to-float v0, v3

    :goto_5
    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    .line 701
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->setTranslationY(F)V

    .line 702
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0, v4}, Lcom/twitter/media/ui/image/BackgroundImageView;->setTranslationY(F)V

    .line 703
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 704
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 706
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 707
    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-lez v5, :cond_f

    move v0, v4

    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 709
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    iget v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    .line 710
    iput-boolean v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    goto/16 :goto_0

    .line 662
    :cond_8
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    .line 663
    invoke-virtual {v0}, Lcom/twitter/android/widget/UnboundedFrameLayout;->getMeasuredHeight()I

    move-result v0

    goto/16 :goto_1

    .line 668
    :cond_9
    iget-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    goto/16 :goto_2

    .line 674
    :cond_a
    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    goto :goto_3

    .line 681
    :cond_b
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->a()I

    move-result v0

    if-gez v0, :cond_4

    .line 682
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    goto :goto_4

    .line 686
    :cond_c
    neg-int v7, v5

    sub-int v2, v7, v2

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    .line 687
    iget v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->a()I

    move-result v7

    add-int/2addr v2, v7

    iput v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    .line 688
    iget v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    if-lez v2, :cond_d

    .line 689
    iput v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    goto/16 :goto_4

    .line 690
    :cond_d
    iget v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    if-ge v2, v0, :cond_4

    .line 691
    iput v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    goto/16 :goto_4

    .line 700
    :cond_e
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    int-to-float v0, v0

    goto :goto_5

    .line 707
    :cond_f
    int-to-float v0, v5

    goto :goto_6

    .line 711
    :cond_10
    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    add-int/lit16 v0, v0, 0x96

    if-le v0, v2, :cond_14

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->b()I

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    if-nez v0, :cond_14

    .line 714
    :cond_11
    iput-boolean v8, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    .line 715
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    .line 716
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->setTranslationY(F)V

    .line 717
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0, v4}, Lcom/twitter/media/ui/image/BackgroundImageView;->setTranslationY(F)V

    .line 718
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 719
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 721
    :cond_12
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 722
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 724
    :cond_13
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    goto/16 :goto_0

    .line 726
    :cond_14
    iput-boolean v8, p0, Lcom/twitter/android/events/TwitterEventActivity;->Y:Z

    .line 727
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->a()I

    move-result v0

    if-lez v0, :cond_15

    iget v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    if-le v0, v2, :cond_15

    .line 729
    iput v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    .line 731
    :cond_15
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->b()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    .line 737
    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getTranslationY()F

    move-result v0

    neg-int v7, v6

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    .line 738
    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_17

    .line 739
    :cond_16
    invoke-virtual {p1}, Lcom/twitter/android/events/e;->e()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 749
    :cond_17
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/twitter/android/events/e;->a()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 751
    neg-int v4, v6

    if-ge v0, v4, :cond_18

    .line 752
    neg-int v0, v6

    .line 754
    :cond_18
    if-lez v0, :cond_1b

    .line 758
    :goto_7
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    .line 759
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    int-to-float v3, v1

    invoke-virtual {v0, v3}, Lcom/twitter/internal/android/widget/ToolBar;->setTranslationY(F)V

    .line 760
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    int-to-float v3, v1

    invoke-virtual {v0, v3}, Lcom/twitter/media/ui/image/BackgroundImageView;->setTranslationY(F)V

    .line 761
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 762
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    int-to-float v3, v1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 764
    :cond_19
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 765
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    int-to-float v3, v5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 767
    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->q:Lcom/twitter/android/widget/UnboundedFrameLayout;

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_1b
    move v1, v0

    goto :goto_7
.end method

.method public a(Lcom/twitter/android/widget/TopicView$TopicData;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 478
    iget-object v0, p1, Lcom/twitter/android/widget/TopicView$TopicData;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 482
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    iget v4, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    invoke-static {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v4

    .line 483
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 485
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    aput-object v6, v5, v10

    const-string/jumbo v6, "event_card"

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    aput-object v6, v5, v12

    aput-object v1, v5, v13

    const/4 v6, 0x4

    const-string/jumbo v7, "pull_to_refresh"

    aput-object v7, v5, v6

    .line 486
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v5, "query"

    .line 489
    invoke-virtual {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 490
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 531
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    iget-object v0, p1, Lcom/twitter/android/widget/TopicView$TopicData;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->b(Ljava/lang/String;)V

    .line 540
    :goto_2
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->b(Lcom/twitter/android/widget/TopicView$TopicData;)V

    .line 542
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    aput-object v3, v2, v10

    const-string/jumbo v3, "event_card"

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    aput-object v3, v2, v12

    aput-object v1, v2, v13

    const/4 v1, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v2, v1

    .line 547
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "query"

    .line 550
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 551
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 552
    iput-object p1, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    goto/16 :goto_0

    .line 492
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0400eb

    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    .line 493
    invoke-virtual {v0, v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    .line 494
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->setHeaderView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    const v5, 0x7f13035d

    .line 496
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/BackgroundImageView;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    .line 497
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v0, v5}, Lcom/twitter/media/ui/image/BackgroundImageView;->setAspectRatio(F)V

    .line 499
    iget-wide v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_6

    iget-wide v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    .line 500
    invoke-static {p0, v6, v7}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 502
    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 504
    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    const v5, 0x7f13035c

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    .line 517
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    const v5, 0x7f13035b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    .line 519
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->l()Landroid/view/View;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->m()Landroid/view/View;

    move-result-object v5

    .line 522
    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    .line 523
    iget-object v6, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 527
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    .line 500
    goto :goto_3

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->T:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->T:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 508
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->T:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twitter/media/ui/image/BackgroundImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 511
    :cond_8
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->s()V

    .line 512
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/twitter/media/ui/image/BackgroundImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 534
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->s()V

    .line 535
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/BackgroundImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 536
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/twitter/media/ui/image/BackgroundImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->r:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->requestLayout()V

    goto/16 :goto_2
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1004
    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->b(Landroid/graphics/Bitmap;)V

    .line 1006
    iget-boolean v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->R:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->R:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1012
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    invoke-virtual {v0}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public a(Lcom/twitter/model/topic/g;)V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    sget-object v1, Lcom/twitter/model/topic/d;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/widget/TopicView$TopicData;->m:[B

    .line 789
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/android/widget/TopicView$TopicData;)V

    .line 791
    :cond_0
    return-void
.end method

.method public a(ZLandroid/widget/ListView;Lcom/twitter/android/SearchFragment;)V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 290
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "query"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-interface {p1}, Lcyd;->a()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 294
    :pswitch_0
    invoke-static {p0, v1, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "query"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "share"

    aput-object v4, v2, v3

    .line 296
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x7f1307f6
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Lcyg;)Z

    .line 270
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;JLcom/twitter/model/topic/TwitterTopic;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lcom/twitter/android/events/TwitterEventActivity;->j:Ljava/lang/String;

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method protected aD_()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->n()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a08f6

    .line 353
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->aD_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Landroid/content/res/Resources;)I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcyg;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->b(Lcyg;)I

    .line 278
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 279
    const v1, 0x7f1307cc

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbjl;->b(Z)Lbjl;

    .line 280
    const v1, 0x7f1307f6

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbjl;->b(Z)Lbjl;

    .line 281
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 283
    const/4 v0, 0x2

    return v0
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->b(I)V

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->C:Z

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    .line 798
    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->a(Landroid/graphics/Bitmap;)V

    .line 774
    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->C:Z

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->cancel(Z)Z

    .line 778
    :cond_0
    new-instance v0, Lcom/twitter/android/ns;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ns;-><init>(Lcom/twitter/android/ScrollingHeaderActivity;Z)V

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    .line 779
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->b()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 170
    invoke-static {p0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->l:Lcom/twitter/library/provider/dm;

    .line 172
    if-nez p1, :cond_4

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    .line 174
    iput-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->T:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    .line 176
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    const-string/jumbo v0, "search_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 186
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    const-string/jumbo v0, "EXTRA_PARENT_EVENT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 190
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->c(Landroid/content/Intent;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->l:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;)V

    .line 194
    const-string/jumbo v0, "topic_data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TopicView$TopicData;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    .line 195
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    .line 197
    const-string/jumbo v3, "event_page_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->i:Ljava/lang/String;

    .line 198
    const-string/jumbo v3, "LEAGUE"

    iget-object v4, p0, Lcom/twitter/android/events/TwitterEventActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->g:Z

    .line 199
    iget-boolean v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->g:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 200
    iget-object v3, v0, Lcom/twitter/android/widget/TopicView$TopicData;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    .line 201
    iget v3, v0, Lcom/twitter/android/widget/TopicView$TopicData;->b:I

    iput v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    .line 207
    :goto_1
    const-string/jumbo v3, "search"

    iput-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    .line 209
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 212
    iget-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    invoke-virtual {v3, p0}, Lcom/twitter/android/widget/UnboundedFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0, v0}, Lcom/twitter/android/events/TwitterEventActivity;->a(Lcom/twitter/android/widget/TopicView$TopicData;)V

    .line 217
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040369

    .line 218
    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    const-string/jumbo v3, "query"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 223
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    iget v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    invoke-static {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v3

    .line 225
    new-instance v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v6, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    aput-object v0, v7, v9

    iget-boolean v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->g:Z

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_2
    aput-object v0, v7, v10

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    aput-object v0, v7, v11

    aput-object v1, v7, v12

    const/4 v0, 0x4

    const-string/jumbo v8, "takeover"

    aput-object v8, v7, v0

    .line 226
    invoke-virtual {v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v6, "query"

    .line 229
    invoke-virtual {v0, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v6, "search_src_ref"

    .line 230
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 231
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 233
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->m:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 236
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/events/TwitterEventActivity;->N:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v0, v0, Lcom/twitter/library/client/ax;->e:Ljava/lang/String;

    aput-object v0, v4, v10

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    aput-object v0, v4, v11

    aput-object v1, v4, v12

    const/4 v0, 0x4

    const-string/jumbo v1, "impression"

    aput-object v1, v4, v0

    .line 237
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 239
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 242
    :cond_3
    return-void

    .line 178
    :cond_4
    const-string/jumbo v0, "search_ids"

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    .line 180
    const-string/jumbo v0, "scribe_component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "prev_header_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->T:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "header_image_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    goto/16 :goto_0

    .line 203
    :cond_5
    const-string/jumbo v3, "event_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->L:Ljava/lang/String;

    .line 204
    const-string/jumbo v3, "event_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/twitter/android/events/TwitterEventActivity;->M:I

    goto/16 :goto_1

    .line 225
    :cond_6
    const-string/jumbo v0, "games"

    goto/16 :goto_2
.end method

.method protected abstract b(Lcom/twitter/android/widget/TopicView$TopicData;)V
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation
.end method

.method protected g(I)V
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->w:Lcom/twitter/android/widget/ev;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/twitter/android/events/TwitterEventActivity;->h(I)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->g(I)V

    goto :goto_0
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected l()Landroid/view/View;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Landroid/view/View;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    iget-object v0, v0, Lcom/twitter/android/widget/TopicView$TopicData;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->k:Lcom/twitter/android/widget/TopicView$TopicData;

    iget-object v1, v1, Lcom/twitter/android/widget/TopicView$TopicData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->aD_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130602

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->I()Z

    .line 309
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->cancel(Z)Z

    .line 389
    iput-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->K:Lcom/twitter/android/ns;

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->c:Lcom/twitter/library/client/Session$LoginStatus;

    if-ne v0, v1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->l:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->b(Ljava/util/Collection;)V

    .line 394
    :cond_1
    iput-object v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    .line 395
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onDestroy()V

    .line 396
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onRestart()V

    .line 372
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->aP_()V

    .line 375
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onResume()V

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/twitter/android/events/TwitterEventActivity;->D()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->O:Lcom/twitter/internal/android/widget/ToolBar;

    .line 251
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 400
    const-string/jumbo v0, "search_ids"

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->E:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 401
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "prev_header_image"

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->S:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 405
    const-string/jumbo v0, "header_image_id"

    iget-wide v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->U:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    :cond_1
    const-string/jumbo v0, "scribe_component"

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->B:Lcom/twitter/media/ui/image/BackgroundImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BackgroundImageView;->f()V

    .line 382
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onStop()V

    .line 383
    return-void
.end method

.method protected p()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 446
    iget-boolean v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->g:Z

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 463
    :cond_1
    :goto_0
    return v0

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->W:Landroid/view/ViewGroup;

    .line 457
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 458
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/twitter/android/events/TwitterEventActivity;->X:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 463
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected q_()[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->n()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 365
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->q_()[I

    move-result-object v0

    goto :goto_0

    .line 363
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected abstract r()Z
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/twitter/android/events/TwitterEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0207ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/TwitterEventActivity;->h:Landroid/graphics/drawable/Drawable;

    .line 472
    return-void
.end method

.method public t()F
    .locals 3

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/twitter/android/events/TwitterEventActivity;->af()I

    move-result v0

    invoke-direct {p0}, Lcom/twitter/android/events/TwitterEventActivity;->ae()I

    move-result v1

    sub-int/2addr v0, v1

    .line 624
    if-lez v0, :cond_0

    .line 625
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/twitter/android/events/TwitterEventActivity;->Z:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected y()Z
    .locals 1

    .prologue
    .line 315
    const-string/jumbo v0, "event_timelines_blur_header_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

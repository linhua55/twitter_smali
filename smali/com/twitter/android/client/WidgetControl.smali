.class public Lcom/twitter/android/client/WidgetControl;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static final f:Ljava/text/SimpleDateFormat;

.field private static final g:Ljava/lang/Object;

.field private static volatile h:Landroid/text/style/TextAppearanceSpan;

.field private static i:I


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:J

.field private final j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

.field private final k:Lcom/twitter/android/client/ce;

.field private final l:Lcom/twitter/android/client/ce;

.field private final m:Landroid/content/Context;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Lcom/twitter/library/media/manager/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".widget.button.next"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".widget.button.prev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->b:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".widget.update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->c:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/twitter/util/SynchronizedDateFormat;

    invoke-direct {v0}, Lcom/twitter/util/SynchronizedDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->f:Ljava/text/SimpleDateFormat;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->g:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    .line 201
    invoke-static {p1}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->o:Lcom/twitter/library/media/manager/l;

    .line 202
    iput-object p2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    .line 203
    iput-wide p3, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/client/WidgetControl$WidgetList;

    new-instance v1, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>()V

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/android/client/WidgetControl$WidgetList;

    invoke-direct {v2}, Lcom/twitter/android/client/WidgetControl$WidgetList;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    .line 207
    new-instance v1, Lcom/twitter/android/client/ce;

    const v4, 0x7f080005

    const v5, 0x7f040411

    const v6, 0x7f04040d

    move-wide v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/client/ce;-><init>(JIII)V

    iput-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    .line 209
    new-instance v1, Lcom/twitter/android/client/ce;

    const v4, 0x7f080006

    const v5, 0x7f040412

    const v6, 0x7f04040e

    move-wide v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/client/ce;-><init>(JIII)V

    iput-object v1, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    sget-object v0, Lcom/twitter/android/client/WidgetControl;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0a77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J
    .locals 2

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->m:J

    .line 154
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 777
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/DispatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 789
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "ref_event"

    const-string/jumbo v3, "widget::::click"

    .line 790
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    return-object v0

    .line 780
    :cond_0
    if-nez p2, :cond_1

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    .line 782
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "page"

    sget-object v2, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    .line 783
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_1
    invoke-static {p0}, Lcom/twitter/android/util/aj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const v7, 0x7f13045a

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v3, 0x7f1307b7

    const/high16 v4, 0x10000000

    .line 721
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 722
    const v0, 0x7f080005

    if-ne p1, v0, :cond_0

    .line 724
    const v2, 0x7f1307b6

    const/4 v0, 0x5

    if-ne p5, v0, :cond_1

    const v0, 0x7f02045e

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 727
    invoke-virtual {v1, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 729
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    .line 732
    invoke-static {p0, p4, p5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 731
    invoke-static {p0, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 734
    const v2, 0x7f1307b6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 735
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 737
    packed-switch p3, :pswitch_data_0

    .line 752
    const v0, 0x7f130018

    invoke-virtual {v1, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    .line 754
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 755
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 757
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v2

    const/high16 v3, 0x14000000

    .line 758
    invoke-virtual {v2, v3}, Lcom/twitter/android/composer/ax;->d(I)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 759
    invoke-virtual {v2, p4}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v2

    const-string/jumbo v3, "widget::::click"

    .line 760
    invoke-virtual {v2, v3}, Lcom/twitter/android/composer/ax;->c(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 761
    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Intent;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 762
    invoke-virtual {v0, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 763
    const v2, 0x7f1307b8

    .line 764
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->e()I

    move-result v3

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 763
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 771
    :cond_0
    :goto_1
    return-object v1

    .line 724
    :cond_1
    const v0, 0x7f0206a1

    goto :goto_0

    .line 740
    :pswitch_0
    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 744
    :pswitch_1
    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a049e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/client/WidgetControl;I)Lcom/twitter/android/client/WidgetControl$WidgetList;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    return-object v0
.end method

.method private a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V
    .locals 5

    .prologue
    .line 329
    invoke-virtual {p3}, Lcom/twitter/android/client/WidgetControl$WidgetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 330
    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/WidgetControl;->b(Z)V

    .line 337
    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 575
    const v0, 0x7f13004c

    iget-object v1, p2, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 576
    const v0, 0x7f13008b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 578
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 579
    const/4 v0, 0x0

    .line 580
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 581
    iget v5, v0, Lcom/twitter/model/core/cx;->g:I

    sub-int/2addr v5, v1

    .line 582
    iget v6, v0, Lcom/twitter/model/core/cx;->h:I

    sub-int/2addr v6, v1

    .line 583
    if-ltz v5, :cond_8

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 584
    iget-object v0, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 585
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 586
    invoke-virtual {v3, v5, v6, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    sub-int v0, v6, v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 590
    goto :goto_0

    .line 591
    :cond_0
    const v0, 0x7f1301a7

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 593
    const v0, 0x7f13017a

    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->m:J

    .line 594
    invoke-static {v2, v4, v5}, Lcom/twitter/util/al;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 596
    const v1, 0x7f1301a4

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 597
    const v1, 0x7f1301a5

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 598
    const v1, 0x7f1301a6

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 600
    if-eqz p3, :cond_4

    .line 601
    const v0, 0x7f130088

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 609
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->q:J

    .line 611
    invoke-static {v4, v5, p4, p5}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    .line 613
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ref_event"

    const-string/jumbo v3, "widget::::click"

    .line 614
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 615
    const v1, 0x7f1307ba

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    .line 616
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 615
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 620
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    const v0, 0x7f1301a9

    const v1, 0x7f0a090b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 623
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 625
    const v0, 0x7f1301a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 631
    :goto_6
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 632
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcss;->g:Ljava/lang/String;

    .line 635
    :goto_7
    const v1, 0x7f1301aa

    const v3, 0x7f0a06ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 636
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 637
    const v0, 0x7f1301aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 641
    :goto_8
    return-void

    .line 596
    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 597
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_3

    .line 598
    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_4

    .line 605
    :cond_4
    const v0, 0x7f130088

    const v1, 0x7f020094

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 627
    :cond_5
    const v0, 0x7f1301a9

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    .line 633
    :cond_6
    iget-object v0, p2, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    goto :goto_7

    .line 639
    :cond_7
    const v0, 0x7f1301aa

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 672
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 676
    invoke-virtual {p1}, Lcom/twitter/android/client/ce;->a()[I

    move-result-object v7

    .line 677
    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 681
    :cond_1
    const v0, 0x7f0a09b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 683
    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_0

    aget v9, v7, v6

    .line 685
    iget v1, p1, Lcom/twitter/android/client/ce;->b:I

    iget v2, p1, Lcom/twitter/android/client/ce;->d:I

    const-string/jumbo v4, ""

    move-object v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 688
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 683
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 693
    :cond_2
    if-nez p2, :cond_3

    .line 694
    invoke-virtual {p1, p0}, Lcom/twitter/android/client/ce;->b(Landroid/content/Context;)[I

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 699
    :cond_3
    invoke-static {p1, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/ce;I)[I

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 703
    iget v1, p1, Lcom/twitter/android/client/ce;->b:I

    iget v2, p1, Lcom/twitter/android/client/ce;->d:I

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    .line 705
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const v8, 0x7f1307bb

    .line 429
    invoke-static {p2, p3}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/ce;I)[I

    move-result-object v1

    .line 430
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f040412

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 437
    invoke-direct {p0, p3}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 439
    invoke-virtual {v0, v9}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 440
    invoke-direct {p0, v2, v0, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/widget/RemoteViews;Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;)V

    .line 443
    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    .line 445
    iget-wide v6, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 446
    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 450
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v3

    .line 451
    invoke-virtual {v3, v0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    const/high16 v3, 0x14000000

    .line 452
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ax;->d(I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    const-string/jumbo v3, "widget::::click"

    .line 454
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ax;->c(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    .line 455
    invoke-virtual {v0, v3}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 456
    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const/high16 v4, 0x10000000

    .line 457
    invoke-static {v3, v9, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 456
    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 460
    :cond_3
    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    .line 493
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 494
    sget-object v0, Lcom/twitter/android/client/WidgetControl;->h:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_1

    .line 495
    sget-object v7, Lcom/twitter/android/client/WidgetControl;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 496
    :try_start_0
    sget-object v0, Lcom/twitter/android/client/WidgetControl;->h:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 497
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 498
    const v0, 0x7f1200c2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 500
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v0, Lcom/twitter/android/client/WidgetControl;->h:Landroid/text/style/TextAppearanceSpan;

    .line 503
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_1
    iget-object v2, p2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 512
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v3

    .line 513
    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->m:J

    .line 514
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    invoke-static {v3}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 520
    :goto_0
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 521
    if-eqz v2, :cond_2

    .line 522
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 523
    sget-object v0, Lcom/twitter/android/client/WidgetControl;->h:Landroid/text/style/TextAppearanceSpan;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0x21

    invoke-virtual {v7, v0, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 525
    :cond_2
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 526
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 528
    iget v8, v0, Lcom/twitter/model/core/cx;->g:I

    sub-int/2addr v8, v2

    .line 529
    iget v9, v0, Lcom/twitter/model/core/cx;->h:I

    sub-int/2addr v9, v2

    .line 530
    if-ltz v8, :cond_8

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v9, v10, :cond_8

    .line 531
    iget-object v0, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 532
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 533
    invoke-virtual {v7, v8, v9, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    sub-int v0, v9, v0

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    move v2, v0

    .line 537
    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 517
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 538
    :cond_4
    const v0, 0x7f1301a7

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 540
    sget-object v0, Lcom/twitter/android/client/WidgetControl;->f:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v1, :cond_5

    .line 542
    const v2, 0x7f1301a3

    const v3, 0x7f0a0911

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    .line 543
    invoke-virtual {v6, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 552
    :goto_3
    if-eqz p3, :cond_7

    .line 553
    const v0, 0x7f130088

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 559
    :goto_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 560
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->q:J

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 561
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 562
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    .line 563
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ref_event"

    const-string/jumbo v2, "widget::::click"

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 565
    const v1, 0x7f1307ba

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    .line 566
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 565
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 568
    return-void

    .line 544
    :cond_5
    iget-object v1, p2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v1, v1, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 545
    const v1, 0x7f1301a3

    const v2, 0x7f0a0910

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p2, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v4, v4, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 546
    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 549
    :cond_6
    const v1, 0x7f1301a3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 555
    :cond_7
    const v0, 0x7f130088

    const v1, 0x7f020095

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/twitter/android/client/WidgetControl;Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V

    return-void
.end method

.method private a(Lcom/twitter/android/client/ce;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 167
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/ce;->b(Landroid/content/Context;)[I

    move-result-object v1

    .line 168
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/client/ce;->a(Landroid/content/Context;[I)V

    .line 169
    array-length v0, v1

    if-lez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/twitter/android/client/ce;->d()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_update_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    new-instance v3, Lcom/twitter/library/client/l;

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    iget-wide v6, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    const-string/jumbo v5, "widgets"

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    .line 174
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 175
    new-instance v6, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v8, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    invoke-direct {v6, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "widget"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v10, v7, v0

    const/4 v0, 0x3

    aput-object v10, v7, v0

    const/4 v0, 0x4

    const-string/jumbo v8, "impression"

    aput-object v8, v7, v0

    .line 176
    invoke-virtual {v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    array-length v1, v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 178
    invoke-virtual {v3}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 181
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V
    .locals 3

    .prologue
    .line 475
    iget v0, p3, Lcom/twitter/android/client/ce;->b:I

    const v1, 0x7f080005

    if-ne v0, v1, :cond_0

    .line 476
    invoke-direct {p0, p3, p4}, Lcom/twitter/android/client/WidgetControl;->c(Lcom/twitter/android/client/ce;I)V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    invoke-static {v0, p3, v1, v2, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 482
    return-void

    .line 478
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V

    goto :goto_0
.end method

.method private static a(Lcom/twitter/android/client/ce;I)[I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/twitter/android/client/ce;->c()[I

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/ce;->b()[I

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/client/ce;I)V
    .locals 6

    .prologue
    .line 359
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0, p2}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v1

    .line 364
    iget v0, p1, Lcom/twitter/android/client/ce;->b:I

    const v2, 0x7f080005

    if-ne v0, v2, :cond_1

    .line 365
    iget v0, v1, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    .line 371
    :goto_1
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl$WidgetList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 374
    :cond_2
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/Tweet;

    .line 375
    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 376
    new-instance v0, Lcom/twitter/android/client/ca;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/ca;-><init>(Lcom/twitter/android/client/WidgetControl;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/client/ce;I)V

    .line 387
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->o:Lcom/twitter/library/media/manager/l;

    iget-object v2, v3, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v2

    .line 388
    invoke-virtual {v2, v0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    .line 387
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/manager/l;->a(Lcom/twitter/media/request/b;)Lcom/twitter/util/concurrent/j;

    goto :goto_0
.end method

.method private c(Lcom/twitter/android/client/ce;I)V
    .locals 12

    .prologue
    .line 393
    invoke-static {p1, p2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/ce;I)[I

    move-result-object v7

    .line 394
    if-nez v7, :cond_0

    .line 425
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 400
    array-length v9, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v9, :cond_1

    aget v10, v7, v6

    .line 401
    new-instance v11, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v1, Lcom/twitter/android/client/ScrollableWidgetService;

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    const-string/jumbo v0, "appWidgetId"

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string/jumbo v0, "ownerId"

    iget-wide v2, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string/jumbo v0, "contentType"

    invoke-virtual {v11, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string/jumbo v0, "accountName"

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 408
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    iget v1, p1, Lcom/twitter/android/client/ce;->b:I

    iget v2, p1, Lcom/twitter/android/client/ce;->c:I

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;IIILjava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 410
    const v1, 0x7f130310

    invoke-virtual {v0, v10, v1, v11}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 411
    const v1, 0x7f130310

    const v2, 0x7f1307b9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 413
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    invoke-static {}, Lcom/twitter/android/client/WidgetControl;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 417
    const v2, 0x7f130310

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    .line 418
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 417
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 422
    invoke-virtual {v8, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 400
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/android/client/ce;->b()[I

    move-result-object v0

    const v1, 0x7f130310

    invoke-virtual {v8, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto/16 :goto_0
.end method

.method private static declared-synchronized e()I
    .locals 2

    .prologue
    .line 798
    const-class v1, Lcom/twitter/android/client/WidgetControl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/twitter/android/client/WidgetControl;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/android/client/WidgetControl;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/ce;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/ce;)V

    .line 163
    return-void
.end method

.method a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 188
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 189
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, p1}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 190
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    .line 324
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/WidgetControl;->a(JLcom/twitter/android/client/WidgetControl$WidgetList;)V

    .line 326
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "close"

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "account_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 240
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "widget_state"

    if-eqz p1, :cond_1

    .line 241
    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    .line 270
    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    .line 271
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->a()V

    .line 274
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/ce;I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v4, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "refresh"

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account_id"

    iget-wide v6, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 304
    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "latest_time_tweets"

    if-eqz p1, :cond_1

    move-wide v0, v2

    .line 305
    :goto_0
    invoke-virtual {v5, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "latest_time_mentions"

    if-eqz p1, :cond_2

    .line 309
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 302
    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 306
    invoke-direct {p0, v0}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v0

    goto :goto_0

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->j:[Lcom/twitter/android/client/WidgetControl$WidgetList;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 310
    invoke-direct {p0, v2}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl$WidgetList;)J

    move-result-wide v2

    goto :goto_1
.end method

.method b()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/ce;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/ce;->a(Landroid/content/Context;)Z

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

.method public c()V
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "open"

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "account_id"

    iget-wide v4, p0, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 226
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/client/WidgetControl;->f(I)Lcom/twitter/android/client/WidgetControl$WidgetList;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->size()I

    move-result v1

    .line 287
    iget v2, v0, Lcom/twitter/android/client/WidgetControl$WidgetList;->mCurrentListIndex:I

    .line 288
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl$WidgetList;->b()V

    .line 291
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/ce;I)V

    goto :goto_0
.end method

.method public d()Lcom/twitter/library/media/manager/l;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->o:Lcom/twitter/library/media/manager/l;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    const v0, 0x7f080005

    if-ne p1, v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    .line 354
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/ce;I)V

    .line 355
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/WidgetControl;->b(Lcom/twitter/android/client/ce;I)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    goto :goto_1
.end method

.method public e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 647
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/WidgetControl;->m:Landroid/content/Context;

    .line 651
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 652
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->k:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 653
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    .line 654
    iget-object v1, p0, Lcom/twitter/android/client/WidgetControl;->l:Lcom/twitter/android/client/ce;

    iget-object v2, p0, Lcom/twitter/android/client/WidgetControl;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    goto :goto_0
.end method

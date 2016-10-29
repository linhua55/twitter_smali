.class public Lcom/twitter/app/main/MainActivity;
.super Lcom/twitter/android/ActivityWithProgress;
.source "Twttr"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/twitter/android/ba;
.implements Lcom/twitter/android/geo/e;
.implements Lcom/twitter/android/ku;


# static fields
.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field private static o:I

.field private static p:I


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Lcom/twitter/app/main/k;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/twitter/android/util/af;

.field private K:Lcom/twitter/library/service/z;

.field private L:Lcom/twitter/app/main/q;

.field private M:Lcom/twitter/app/main/o;

.field private N:Lcom/twitter/android/client/y;

.field private O:Lcom/twitter/android/geo/c;

.field private P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private Q:Z

.field private R:Lrx/ap;

.field private S:Lcom/twitter/app/main/r;

.field private T:Lanb;

.field private U:Lanb;

.field private V:Lanb;

.field private W:Laqz;

.field h:Lcom/twitter/android/ej;

.field i:Lcom/twitter/app/main/h;

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:Landroid/support/v4/view/ViewPager;

.field n:Lcom/twitter/app/main/m;

.field private final q:Lcom/twitter/app/main/p;

.field private final r:Lcom/twitter/android/lb;

.field private final s:Lcom/twitter/config/f;

.field private t:J

.field private u:I

.field private v:Landroid/content/SharedPreferences;

.field private w:Lcom/twitter/android/client/t;

.field private x:Lcom/twitter/library/client/aa;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    const-string/jumbo v0, "twitter://timeline/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    .line 203
    const-string/jumbo v0, "twitter://notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/main/MainActivity;->d:Landroid/net/Uri;

    .line 204
    const-string/jumbo v0, "twitter://dms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    .line 205
    const-string/jumbo v0, "twitter://moments"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    .line 206
    const-string/jumbo v0, "twitter://news"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/main/MainActivity;->g:Landroid/net/Uri;

    .line 260
    sput v1, Lcom/twitter/app/main/MainActivity;->o:I

    .line 261
    sput v1, Lcom/twitter/app/main/MainActivity;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/twitter/android/ActivityWithProgress;-><init>()V

    .line 273
    new-instance v0, Lcom/twitter/app/main/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/main/p;-><init>(Lcom/twitter/app/main/MainActivity;Lcom/twitter/app/main/a;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->q:Lcom/twitter/app/main/p;

    .line 276
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->r:Lcom/twitter/android/lb;

    .line 278
    new-instance v0, Lcom/twitter/app/main/a;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/a;-><init>(Lcom/twitter/app/main/MainActivity;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->s:Lcom/twitter/config/f;

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->z()V

    .line 1071
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1072
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0}, Lcom/twitter/app/main/m;->d()V

    .line 1075
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1076
    return-void
.end method

.method private B()V
    .locals 1

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->C()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Intent;)V

    .line 1155
    return-void
.end method

.method private C()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "page"

    sget-object v2, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    .line 1160
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "AccountsDialogActivity_account_name"

    .line 1162
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1159
    return-object v0
.end method

.method private D()V
    .locals 4

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    const-string/jumbo v2, "japan_news_android_periodic_sync_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/config/d;->a(JLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->q:Lcom/twitter/app/main/p;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1205
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 1646
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1647
    if-eqz p1, :cond_0

    .line 1648
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1650
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 3

    .prologue
    .line 343
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "AbsFragmentActivity_account_name"

    .line 345
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 347
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/twitter/app/main/MainActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lcom/twitter/app/main/MainActivity;->l:I

    if-eq v0, p1, :cond_0

    .line 1672
    iput p1, p0, Lcom/twitter/app/main/MainActivity;->l:I

    .line 1673
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(I)V

    .line 1677
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 1571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1572
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v1}, Lcom/twitter/app/main/m;->c()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1573
    const-string/jumbo v1, "page"

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v2}, Lcom/twitter/app/main/m;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->finish()V

    .line 1576
    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/main/MainActivity;->overridePendingTransition(II)V

    .line 1577
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1578
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 829
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    .line 830
    invoke-virtual {v0, v2}, Lcom/twitter/app/main/h;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v0, v2}, Lcom/twitter/app/main/h;->removeMessages(I)V

    .line 833
    :cond_0
    invoke-virtual {v0, v2}, Lcom/twitter/app/main/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/app/main/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 834
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1654
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1656
    const-string/jumbo v1, "activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1657
    const-string/jumbo v1, "live_addressbook_sync"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1658
    const-string/jumbo v1, "home"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1659
    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1660
    const-string/jumbo v1, "show_notif"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1661
    const-string/jumbo v1, "news"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1662
    const-string/jumbo v1, "moments"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1663
    invoke-static {p3}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v1

    .line 1664
    if-eqz v1, :cond_0

    .line 1665
    invoke-virtual {v1}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)Z

    .line 1668
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 944
    if-eqz p4, :cond_0

    .line 945
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/app/main/MainActivity;->a(JLjava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 947
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 948
    const-string/jumbo v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 949
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/twitter/library/client/Session;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1635
    invoke-static {p0, p1}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1636
    instance-of v0, p0, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1637
    check-cast v0, Lcom/twitter/app/common/base/TwitterFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->d(Landroid/content/Intent;)V

    .line 1641
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1642
    return-void

    .line 1639
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/app/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1167
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    invoke-static {p1, p2}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 354
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 355
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;I)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/twitter/app/main/MainActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;II)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/main/MainActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;JLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/app/main/MainActivity;->a(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;Lcom/twitter/library/client/ax;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/twitter/app/main/MainActivity;->d(Lcom/twitter/library/client/ax;)V

    return-void
.end method

.method public static a(Lcom/twitter/library/client/bk;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0, p3}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 363
    invoke-static {}, Lcom/twitter/android/bo;->a()V

    .line 364
    invoke-static {p1, p2, p3}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private a(Lcyd;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 954
    if-nez p1, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    instance-of v0, p1, Lcom/twitter/internal/android/widget/e;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 959
    check-cast v0, Lcom/twitter/internal/android/widget/e;

    .line 960
    invoke-interface {v0, p2}, Lcom/twitter/internal/android/widget/e;->setBadgeMode(I)V

    .line 961
    invoke-interface {v0, p3}, Lcom/twitter/internal/android/widget/e;->setBadgeNumber(I)V

    .line 965
    :cond_2
    instance-of v0, p1, Lbjl;

    if-eqz v0, :cond_0

    .line 966
    check-cast p1, Lbjl;

    .line 967
    invoke-virtual {p1}, Lbjl;->j()Ljava/lang/CharSequence;

    move-result-object v1

    .line 968
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 969
    if-gtz p3, :cond_4

    const-string/jumbo v0, ""

    .line 971
    :goto_1
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 972
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Lbjl;->b(Ljava/lang/CharSequence;)Lbjl;

    goto :goto_0

    .line 969
    :cond_4
    const/high16 v0, 0x7f0c0000

    new-array v3, v6, [Ljava/lang/Object;

    .line 970
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 972
    :cond_5
    const v3, 0x7f0a0037

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/twitter/app/main/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/twitter/app/main/MainActivity;->A:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 196
    sput-boolean p0, Lcom/twitter/app/main/MainActivity;->a:Z

    return p0
.end method

.method private ae()V
    .locals 3

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->c()Lcyg;

    move-result-object v1

    .line 1511
    instance-of v0, v1, Lcom/twitter/library/client/navigation/l;

    if-eqz v0, :cond_0

    .line 1513
    invoke-static {}, Lcom/twitter/library/util/g;->a()Lcom/twitter/library/util/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/library/util/g;->b(Lcom/twitter/app/common/base/h;)V

    .line 1515
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerDockLayout;->b()V

    move-object v0, v1

    .line 1517
    check-cast v0, Lcom/twitter/library/client/navigation/l;

    new-instance v2, Lcom/twitter/app/main/g;

    invoke-direct {v2, p0}, Lcom/twitter/app/main/g;-><init>(Lcom/twitter/app/main/MainActivity;)V

    .line 1518
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/navigation/l;->a(Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;)V

    .line 1524
    invoke-interface {v1}, Lcyg;->e()Z

    .line 1528
    :goto_0
    return-void

    .line 1526
    :cond_0
    const-string/jumbo v0, "Theme switching is only supported within Modern Android"

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private af()V
    .locals 3

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 1532
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->c()Lcyg;

    move-result-object v1

    const v2, 0x7f1307de

    invoke-interface {v1, v2}, Lcyg;->b(I)Lcyd;

    move-result-object v1

    .line 1533
    if-eqz v1, :cond_0

    .line 1534
    invoke-static {v0}, Lcom/twitter/android/ads/c;->c(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcyd;->f(Z)Lcyd;

    .line 1536
    :cond_0
    return-void
.end method

.method private ag()V
    .locals 3

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1540
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcyj;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 1541
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1680
    iget v0, p0, Lcom/twitter/app/main/MainActivity;->k:I

    if-eq v0, p1, :cond_0

    .line 1681
    iput p1, p0, Lcom/twitter/app/main/MainActivity;->k:I

    .line 1683
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 1685
    :cond_0
    return-void
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->L:Lcom/twitter/app/main/q;

    sget-object v2, Lcom/twitter/app/main/h;->a:[I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/twitter/app/main/h;->a(JLcom/twitter/app/main/q;[I)V

    .line 838
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1208
    const-string/jumbo v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1211
    const-string/jumbo v1, "timeline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    .line 1227
    :goto_0
    const-string/jumbo v0, "scroll_to_top"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->z:Z

    .line 1228
    return-void

    .line 1215
    :cond_0
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 1218
    :cond_1
    const-string/jumbo v0, "page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1219
    if-nez v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "tag"

    sget-object v2, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 1224
    :cond_2
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->ag()V

    return-void
.end method

.method static synthetic b(Lcom/twitter/app/main/MainActivity;I)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/twitter/app/main/MainActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->af()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 1560
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->M:Lcom/twitter/app/main/o;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 1562
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 1563
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 1565
    invoke-static {}, Lcom/twitter/android/bo;->a()V

    .line 1566
    const v0, 0x7f050050

    const v1, 0x7f050051

    invoke-direct {p0, v0, v1}, Lcom/twitter/app/main/MainActivity;->a(II)V

    .line 1567
    return-void
.end method

.method static synthetic d(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1014
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0}, Lcom/twitter/app/common/list/y;-><init>()V

    iget v1, p0, Lcom/twitter/app/main/MainActivity;->u:I

    .line 1015
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->e(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 1016
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->f(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 1018
    sget-object v1, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1019
    const v1, 0x7f0a0387

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const v2, 0x7f0a0388

    .line 1020
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/list/y;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "type"

    .line 1021
    invoke-virtual {v1, v2, v5}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    .line 1023
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1024
    if-eqz v1, :cond_0

    const-string/jumbo v2, "ref_event"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    const-string/jumbo v2, "ref_event"

    const-string/jumbo v3, "ref_event"

    .line 1026
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-virtual {v0, v2, v1}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/twitter/library/client/ay;

    sget-object v3, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    const-class v4, Lcom/twitter/android/HomeTimelineFragment;

    invoke-direct {v2, v3, v4}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 1030
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const-string/jumbo v2, "home"

    .line 1031
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f0a0419

    .line 1032
    invoke-virtual {p0, v2}, Lcom/twitter/app/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f02029a

    .line 1033
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1034
    invoke-virtual {v0, v5}, Lcom/twitter/library/client/ay;->a(Z)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f13003d

    .line 1035
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->b(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    const-string/jumbo v2, "nav_item_tag_home"

    .line 1036
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/Object;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 1029
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    invoke-virtual {v0}, Lcom/twitter/app/main/k;->notifyDataSetChanged()V

    .line 1067
    return-void

    .line 1038
    :cond_2
    sget-object v1, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/twitter/android/bw;

    invoke-direct {v2}, Lcom/twitter/android/bw;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, p0, p1, v0}, Lcom/twitter/android/bw;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1040
    :cond_3
    sget-object v1, Lcom/twitter/app/main/MainActivity;->d:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1041
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/twitter/android/kl;

    invoke-direct {v2}, Lcom/twitter/android/kl;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, p0, p1, v0}, Lcom/twitter/android/kl;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    :cond_4
    sget-object v1, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1045
    const-string/jumbo v1, "show_category_pills"

    .line 1046
    invoke-static {}, Lcey;->i()Z

    move-result v2

    .line 1045
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v2, "home_view_tag"

    const-string/jumbo v3, "nav_item_tag_home"

    .line 1047
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    .line 1048
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/twitter/library/client/ay;

    const-class v3, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;

    invoke-direct {v2, p1, v3}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 1049
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const-string/jumbo v2, "moments"

    .line 1050
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f0a0573

    .line 1051
    invoke-virtual {p0, v2}, Lcom/twitter/app/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f02029d

    .line 1052
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1053
    invoke-virtual {v0, v5}, Lcom/twitter/library/client/ay;->a(Z)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f1306fe

    .line 1054
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->b(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 1048
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1056
    :cond_5
    sget-object v1, Lcom/twitter/app/main/MainActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/twitter/library/client/ay;

    const-class v3, Lcom/twitter/android/news/CategorizedNewsFragment;

    invoke-direct {v2, p1, v3}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 1058
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const-string/jumbo v2, "news"

    .line 1059
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f0a0591

    .line 1060
    invoke-virtual {p0, v2}, Lcom/twitter/app/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f02029e

    .line 1061
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1062
    invoke-virtual {v0, v5}, Lcom/twitter/library/client/ay;->a(Z)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v2, 0x7f1306ff

    .line 1063
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->b(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 1057
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private d(Lcom/twitter/library/client/ax;)V
    .locals 5

    .prologue
    .line 1376
    invoke-static {p1}, Lcom/twitter/app/main/MainActivity;->e(Lcom/twitter/library/client/ax;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_0

    .line 1378
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "home"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "navigation_bar"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "tab_tap_scroll_to_top"

    aput-object v3, v2, v0

    .line 1379
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1378
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1381
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/twitter/library/client/ax;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1386
    sget-object v0, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    const-string/jumbo v0, "moments"

    .line 1399
    :goto_0
    return-object v0

    .line 1388
    :cond_0
    sget-object v0, Lcom/twitter/app/main/MainActivity;->g:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    const-string/jumbo v0, "news_menu_item"

    goto :goto_0

    .line 1390
    :cond_1
    sget-object v0, Lcom/twitter/app/main/MainActivity;->d:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    const-string/jumbo v0, "notifications_menu_item"

    goto :goto_0

    .line 1392
    :cond_2
    sget-object v0, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1393
    const-string/jumbo v0, "messages_menu_item"

    goto :goto_0

    .line 1394
    :cond_3
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1395
    const-string/jumbo v0, "home_menu_item"

    goto :goto_0

    .line 1397
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->J:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/twitter/app/main/MainActivity;->a:Z

    return v0
.end method

.method private u()I
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private v()I
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private w()V
    .locals 4

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->A:Z

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->R:Lrx/ap;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->R:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 745
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 744
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/s;->b(Landroid/content/Context;J)Lrx/o;

    move-result-object v0

    .line 746
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/main/e;

    invoke-direct {v1, p0}, Lcom/twitter/app/main/e;-><init>(Lcom/twitter/app/main/MainActivity;)V

    .line 747
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->R:Lrx/ap;

    .line 756
    :cond_1
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 763
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 769
    invoke-static {v0, v1}, Lcbq;->c(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/platform/PlatformContext;->b()Lcom/twitter/platform/r;

    move-result-object v2

    .line 773
    invoke-static {}, Lcom/twitter/android/twogday/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 774
    invoke-static {v2}, Lcom/twitter/android/twogday/c;->a(Lcom/twitter/platform/r;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 775
    invoke-static {}, Lcom/twitter/android/twogday/c;->b()V

    .line 776
    invoke-static {p0, v0, v1}, Lcom/twitter/android/twogday/TwoGDayStartOverlay;->a(Landroid/support/v4/app/FragmentActivity;J)V

    goto :goto_0

    .line 779
    :cond_2
    invoke-static {v2}, Lcom/twitter/android/twogday/c;->a(Lcom/twitter/platform/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    invoke-static {}, Lcom/twitter/library/network/z;->a()Lcom/twitter/library/network/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/network/z;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    invoke-static {}, Lcom/twitter/android/twogday/c;->c()V

    .line 782
    invoke-static {p0, v0, v1}, Lcom/twitter/android/twogday/TwoGDayEndOverlay;->a(Landroid/support/v4/app/FragmentActivity;J)V

    goto :goto_0
.end method

.method private y()V
    .locals 6

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 982
    if-eqz v1, :cond_0

    .line 983
    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->E:Lcom/twitter/android/util/af;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/util/af;->a(J)V

    .line 984
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->A()V

    .line 987
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/CharSequence;)V

    .line 989
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcyj;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 990
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 995
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->E:Lcom/twitter/android/util/af;

    invoke-virtual {v0}, Lcom/twitter/android/util/af;->a()I

    move-result v0

    .line 996
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    .line 997
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 998
    sget-object v0, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_0
    :goto_0
    sget-object v0, Lcom/twitter/app/main/MainActivity;->d:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    sget-object v0, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->d(Landroid/net/Uri;)V

    .line 1007
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1008
    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->d(Landroid/net/Uri;)V

    goto :goto_1

    .line 999
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1000
    sget-object v0, Lcom/twitter/app/main/MainActivity;->g:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0}, Lcom/twitter/app/main/m;->notifyDataSetChanged()V

    .line 1011
    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic a(Lcom/twitter/library/client/ax;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/twitter/app/main/MainActivity;->b(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 370
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 371
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 373
    const v1, 0x7f04018e

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 374
    return-object v0
.end method

.method public a(Landroid/net/Uri;IZ)V
    .locals 3

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1548
    iget-object v2, v0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/twitter/library/client/ax;->i:I

    if-eq v2, p2, :cond_0

    .line 1549
    iput p2, v0, Lcom/twitter/library/client/ax;->i:I

    .line 1550
    iput-boolean p3, v0, Lcom/twitter/library/client/ax;->h:Z

    .line 1551
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    invoke-virtual {v0}, Lcom/twitter/app/main/k;->notifyDataSetChanged()V

    .line 1555
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 6

    .prologue
    .line 929
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->a(Lcom/twitter/library/service/x;I)V

    .line 932
    iget-object v0, p1, Lcom/twitter/library/service/x;->e:Ljava/lang/String;

    sget-object v1, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 934
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 935
    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    iget-object v0, v1, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/twitter/app/main/MainActivity;->a(JLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 1412
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 1413
    sparse-switch v1, :sswitch_data_0

    .line 1490
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    move-result v0

    .line 1494
    :goto_0
    return v0

    .line 1415
    :sswitch_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "home"

    aput-object v4, v2, v3

    const-string/jumbo v3, "navigation_bar"

    aput-object v3, v2, v0

    const-string/jumbo v3, "overflow"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "click"

    aput-object v4, v2, v3

    .line 1416
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 1415
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 1417
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v1}, Lcyj;->c()Lcyg;

    move-result-object v1

    invoke-interface {v1}, Lcyg;->b()Z

    goto :goto_0

    .line 1421
    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->m()V

    goto :goto_0

    .line 1425
    :sswitch_2
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->l()V

    goto :goto_0

    .line 1429
    :sswitch_3
    const-string/jumbo v1, "night_mode_switch"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    .line 1430
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->ae()V

    goto :goto_0

    .line 1434
    :sswitch_4
    invoke-static {}, Lcgb;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/people/PeopleDiscoveryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1440
    :goto_1
    const-string/jumbo v1, "peopleplus_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/RootTabbedFindPeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v5}, Lcom/twitter/app/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1444
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user_id"

    .line 1445
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 1444
    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1446
    const-string/jumbo v1, "me_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1450
    :sswitch_6
    invoke-static {}, Lcom/twitter/app/lists/c;->a()Lcom/twitter/app/lists/c;

    move-result-object v1

    .line 1451
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/lists/c;->b(J)Lcom/twitter/app/lists/c;

    move-result-object v1

    .line 1452
    invoke-virtual {v1, p0}, Lcom/twitter/app/lists/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1450
    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1453
    const-string/jumbo v1, "lists_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1457
    :sswitch_7
    new-instance v1, Lcom/twitter/android/highlights/j;

    invoke-direct {v1, p0}, Lcom/twitter/android/highlights/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/twitter/android/highlights/j;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1458
    const-string/jumbo v1, "highlights_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1462
    :sswitch_8
    invoke-static {p0}, Lcom/twitter/android/ads/AdsCompanionWebViewActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1463
    const-string/jumbo v1, "open_ads_companion"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1467
    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/news/NewsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1468
    const-string/jumbo v1, "news_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    :sswitch_a
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    .line 1474
    const-string/jumbo v1, "settings_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1479
    :sswitch_b
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    .line 1480
    const-string/jumbo v1, "help_overflow_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1485
    :sswitch_c
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    .line 1486
    const-string/jumbo v1, "search_menu_item"

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f13000c -> :sswitch_1
        0x7f130028 -> :sswitch_0
        0x7f13004b -> :sswitch_5
        0x7f13004f -> :sswitch_2
        0x7f1306fb -> :sswitch_7
        0x7f1307cc -> :sswitch_c
        0x7f1307da -> :sswitch_9
        0x7f1307db -> :sswitch_6
        0x7f1307dc -> :sswitch_4
        0x7f1307dd -> :sswitch_3
        0x7f1307de -> :sswitch_8
        0x7f130808 -> :sswitch_a
        0x7f130809 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Lcyg;)Z
    .locals 2

    .prologue
    .line 1241
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyg;)Z

    .line 1242
    const v0, 0x7f14002a

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 1243
    const v0, 0x7f140014

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 1244
    const v0, 0x7f140013

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 1245
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->W:Laqz;

    if-eqz v0, :cond_0

    .line 1246
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 1247
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->W:Laqz;

    invoke-virtual {v1, v0}, Laqz;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1249
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 1255
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->b(Lcyg;)I

    .line 1256
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 1258
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->W:Laqz;

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->W:Laqz;

    invoke-virtual {v1, v0}, Laqz;->b(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1266
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->E:Lcom/twitter/android/util/af;

    invoke-virtual {v1, p1}, Lcom/twitter/android/util/af;->a(Lcyg;)V

    .line 1267
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->E:Lcom/twitter/android/util/af;

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->w:Lcom/twitter/android/client/t;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/util/af;->a(Lcom/twitter/internal/android/widget/ToolBar;Lcom/twitter/android/client/t;)V

    .line 1272
    const v0, 0x7f1307e0

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/e;

    .line 1273
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    invoke-virtual {v1, v0}, Lanb;->a(Lcom/twitter/internal/android/widget/e;)V

    .line 1277
    :cond_1
    const v0, 0x7f13003d

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/e;

    .line 1278
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    if-eqz v1, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    invoke-virtual {v1, v0}, Lanb;->a(Lcom/twitter/internal/android/widget/e;)V

    .line 1282
    :cond_2
    const v0, 0x7f1307df

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/e;

    .line 1283
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    if-eqz v1, :cond_3

    .line 1284
    invoke-interface {v0, v3}, Lcom/twitter/internal/android/widget/e;->setBadgeMode(I)V

    .line 1285
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    invoke-virtual {v1, v0}, Lanb;->a(Lcom/twitter/internal/android/widget/e;)V

    .line 1293
    :cond_3
    const v0, 0x7f1306ff

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    iget v1, p0, Lcom/twitter/app/main/MainActivity;->k:I

    invoke-direct {p0, v0, v4, v1}, Lcom/twitter/app/main/MainActivity;->a(Lcyd;II)V

    .line 1296
    const v0, 0x7f1306fe

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v1}, Lcom/twitter/app/main/MainActivity;->a(Lcyd;II)V

    .line 1302
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->af()V

    .line 1305
    const v0, 0x7f1307dd

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v1

    .line 1306
    if-eqz v1, :cond_4

    .line 1307
    invoke-static {}, Lcom/twitter/library/util/g;->a()Lcom/twitter/library/util/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/util/g;->b()Z

    move-result v0

    invoke-interface {v1, v0}, Lcyd;->f(Z)Lcyd;

    .line 1308
    invoke-interface {v1}, Lcyd;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_4

    .line 1309
    invoke-interface {v1}, Lcyd;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 1310
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1311
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/library/util/g;->a(Landroid/content/res/Resources;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1312
    new-instance v2, Lcom/twitter/app/main/f;

    invoke-direct {v2, p0, v1}, Lcom/twitter/app/main/f;-><init>(Lcom/twitter/app/main/MainActivity;Lcyd;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1322
    :cond_4
    const v0, 0x7f1307dc

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v1

    .line 1323
    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0a05fb

    .line 1325
    :goto_0
    if-eqz v1, :cond_5

    .line 1326
    invoke-interface {v1, v0}, Lcyd;->g(I)Lcyd;

    .line 1329
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1330
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcyj;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 1332
    return v3

    .line 1323
    :cond_6
    const v0, 0x7f0a0965

    goto :goto_0
.end method

.method public b(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 1

    .prologue
    .line 800
    if-nez p1, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 804
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/ax;->a(Landroid/support/v4/app/FragmentManager;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->h()Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    .line 791
    instance-of v1, v0, Lcom/twitter/android/ba;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Lcom/twitter/android/ba;

    invoke-interface {v0}, Lcom/twitter/android/ba;->b()Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0, p1}, Lcom/twitter/app/main/m;->a(Landroid/net/Uri;)I

    move-result v0

    .line 1232
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1233
    invoke-static {}, Lcom/twitter/android/metrics/LaunchTracker;->a()Lcom/twitter/android/metrics/LaunchTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twitter/android/metrics/LaunchTracker;->a(Landroid/net/Uri;)V

    .line 1234
    invoke-virtual {p0, p1}, Lcom/twitter/app/main/MainActivity;->c(Landroid/net/Uri;)V

    .line 1235
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1237
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 10

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 381
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v1

    .line 382
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->c(Landroid/content/Intent;)V

    .line 386
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    .line 388
    new-instance v0, Lcom/twitter/app/main/h;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twitter/app/main/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    .line 389
    new-instance v0, Lcom/twitter/app/main/q;

    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    invoke-direct {v0, v3}, Lcom/twitter/app/main/q;-><init>(Lcom/twitter/app/main/h;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->L:Lcom/twitter/app/main/q;

    .line 390
    invoke-virtual {v1, p0}, Lcom/twitter/android/client/c;->c(Landroid/content/Context;)V

    .line 392
    const v0, 0x7f130362

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    .line 393
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0f0264

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 394
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f1200c4

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 395
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    .line 398
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version_code"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/twitter/app/main/MainActivity;->p:I

    .line 400
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->y:Z

    .line 403
    new-instance v0, Lcom/twitter/app/main/i;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/i;-><init>(Lcom/twitter/app/main/MainActivity;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->x:Lcom/twitter/library/client/aa;

    .line 404
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->x:Lcom/twitter/library/client/aa;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/client/aa;)V

    .line 406
    new-instance v0, Lcom/twitter/app/main/o;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/o;-><init>(Lcom/twitter/app/main/MainActivity;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->M:Lcom/twitter/app/main/o;

    .line 407
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->M:Lcom/twitter/app/main/o;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 409
    new-instance v0, Lcom/twitter/app/main/j;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/j;-><init>(Lcom/twitter/app/main/MainActivity;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->K:Lcom/twitter/library/service/z;

    .line 410
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->K:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    .line 413
    new-instance v0, Lcom/twitter/app/main/k;

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/twitter/app/main/k;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    .line 415
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 417
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    .line 418
    new-instance v2, Lcom/twitter/android/client/t;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/twitter/android/client/t;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/twitter/app/main/MainActivity;->w:Lcom/twitter/android/client/t;

    .line 421
    if-nez p1, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/twitter/android/client/c;->c()Lcom/twitter/library/service/x;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->J:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 431
    :cond_0
    new-instance v0, Lcom/twitter/android/util/af;

    invoke-direct {v0, v8, v9}, Lcom/twitter/android/util/af;-><init>(J)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->E:Lcom/twitter/android/util/af;

    .line 433
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->v()I

    move-result v0

    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->u()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/app/main/MainActivity;->u:I

    .line 435
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/twitter/internal/android/widget/DockLayout;

    .line 436
    if-eqz v7, :cond_1

    .line 437
    new-instance v0, Lcom/twitter/android/kv;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v1

    iget v2, p0, Lcom/twitter/app/main/MainActivity;->u:I

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/kv;-><init>(Lcom/twitter/android/ku;Lcom/twitter/internal/android/widget/ToolBar;I)V

    invoke-virtual {v7, v0}, Lcom/twitter/internal/android/widget/DockLayout;->a(Lcom/twitter/internal/android/widget/g;)V

    .line 441
    :cond_1
    const v0, 0x7f130364

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twitter/internal/android/widget/HorizontalListView;

    .line 442
    new-instance v0, Lcom/twitter/app/main/m;

    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    iget-object v4, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/app/main/m;-><init>(Lcom/twitter/app/main/MainActivity;Lcom/twitter/app/main/MainActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    .line 443
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 445
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    invoke-virtual {v5, v0}, Lcom/twitter/internal/android/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    new-instance v0, Lcom/twitter/app/main/c;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/c;-><init>(Lcom/twitter/app/main/MainActivity;)V

    invoke-virtual {v5, v0}, Lcom/twitter/internal/android/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 458
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->c()Lcyg;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/navigation/l;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    .line 459
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/navigation/l;->a(Landroid/widget/BaseAdapter;)V

    .line 461
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->z()V

    .line 463
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/content/Intent;)V

    .line 466
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->p()V

    .line 468
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->i()V

    .line 470
    if-nez p1, :cond_6

    .line 471
    invoke-static {p0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bz;->a([I)V

    .line 473
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/p;->a(Landroid/content/Context;)V

    .line 482
    :cond_2
    :goto_0
    invoke-static {}, Lcom/twitter/util/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 483
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "app::::explorebytouch_enabled"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 486
    :cond_3
    invoke-static {p0}, Lcom/twitter/android/hv;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    .line 492
    :cond_4
    new-instance v0, Lcom/twitter/android/geo/c;

    const-string/jumbo v1, "main_activity_location_dialog"

    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->r:Lcom/twitter/android/lb;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/android/geo/c;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/twitter/android/lb;I)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->O:Lcom/twitter/android/geo/c;

    .line 495
    new-instance v0, Lcom/twitter/app/main/d;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/d;-><init>(Lcom/twitter/app/main/MainActivity;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 506
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 507
    invoke-static {}, Lbsp;->a()Lbsp;

    move-result-object v0

    invoke-virtual {v0}, Lbsp;->b()V

    .line 510
    new-instance v0, Lanf;

    new-instance v1, Lani;

    new-instance v2, Lazn;

    .line 511
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lani;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lanf;-><init>(Lane;)V

    .line 512
    new-instance v1, Lanb;

    invoke-direct {v1, v0, v8, v9}, Lanb;-><init>(Lanf;J)V

    iput-object v1, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    .line 514
    new-instance v0, Lanf;

    new-instance v1, Lanm;

    new-instance v2, Lazn;

    .line 515
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lanm;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lanf;-><init>(Lane;)V

    .line 516
    new-instance v1, Lanb;

    invoke-direct {v1, v0, v8, v9}, Lanb;-><init>(Lanf;J)V

    iput-object v1, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    .line 518
    new-instance v0, Lanf;

    new-instance v1, Lang;

    new-instance v2, Lazn;

    .line 519
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lang;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lanf;-><init>(Lane;)V

    .line 520
    new-instance v1, Lanb;

    invoke-direct {v1, v0, v8, v9}, Lanb;-><init>(Lanf;J)V

    iput-object v1, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    .line 522
    new-instance v0, Lcom/twitter/app/main/r;

    const v1, 0x7f130457

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/main/r;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->S:Lcom/twitter/app/main/r;

    .line 525
    invoke-static {}, Lcfg;->b()Lcfg;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcfg;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 527
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v1

    invoke-static {p0, v1, v0}, Laqz;->a(Landroid/content/Context;Lcom/twitter/android/client/SearchSuggestionController;Lcfg;)Laqz;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->W:Laqz;

    .line 530
    :cond_5
    return-void

    .line 478
    :cond_6
    const-string/jumbo v0, "alreadyCheckedExpiredDrafts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->A:Z

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1353
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "home"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "navigation_bar"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 1354
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1353
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1355
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->Q:Z

    .line 1690
    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1581
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    .line 1582
    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    const/16 v3, 0xff

    invoke-virtual {v2, v1, v3}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;I)V

    .line 1587
    sget-object v2, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    iget-object v2, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/client/y;->b(Ljava/lang/String;I)V

    .line 1592
    :cond_0
    sget-object v1, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1593
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Lahi;->a(J)V

    .line 1596
    :cond_1
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    .line 1597
    invoke-virtual {v1, p1}, Lcom/twitter/app/main/m;->a(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/app/main/m;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/app/main/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1598
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twitter/app/main/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 1600
    sget-object v1, Lcom/twitter/app/main/MainActivity;->e:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 1603
    :cond_2
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->j(I)V

    .line 1604
    return-void
.end method

.method protected c(Lcom/twitter/library/client/ax;)V
    .locals 1

    .prologue
    .line 1364
    invoke-static {p1}, Lcom/twitter/app/main/MainActivity;->e(Lcom/twitter/library/client/ax;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Ljava/lang/String;)V

    .line 1368
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/ab;->a(Landroid/content/Context;)Lcom/twitter/library/util/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/util/ab;->a()V

    .line 1406
    invoke-direct {p0, p1}, Lcom/twitter/app/main/MainActivity;->c(Ljava/lang/String;)V

    .line 1407
    return-void
.end method

.method public g()Lcom/twitter/android/AbsPagesAdapter;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    return-object v0
.end method

.method public h()Lcom/twitter/app/common/list/TwitterListFragment;
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/main/m;->a(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    return-object v0
.end method

.method i()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 813
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 814
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v0, "hometab"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    .line 817
    const-string/jumbo v2, "ft"

    invoke-virtual {v1, v2, v6, v7}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 818
    invoke-virtual {v0, v4}, Lcom/twitter/app/main/h;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v0, v4}, Lcom/twitter/app/main/h;->removeMessages(I)V

    .line 821
    :cond_0
    invoke-virtual {v0, v4}, Lcom/twitter/app/main/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/app/main/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 824
    :cond_1
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/twitter/app/main/MainActivity;->b(J)V

    .line 825
    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/twitter/app/main/MainActivity;->a(J)V

    .line 826
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->C()Landroid/content/Intent;

    move-result-object v0

    .line 1171
    const-string/jumbo v1, "AccountsDialogActivity_new_account"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Intent;)V

    .line 1173
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->C()Landroid/content/Intent;

    move-result-object v0

    .line 1177
    const-string/jumbo v1, "AccountsDialogActivity_add_account"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1178
    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Intent;)V

    .line 1179
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1080
    invoke-interface {p0}, Lcom/twitter/app/common/util/s;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    array-length v6, p1

    move v3, v0

    move v1, v0

    move v2, v0

    move-object v0, v4

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v5, p1, v3

    .line 1089
    sget-object v7, Lcom/twitter/library/util/b;->a:Ljava/lang/String;

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1090
    add-int/lit8 v2, v2, 0x1

    .line 1091
    if-nez v0, :cond_2

    move-object v0, v5

    .line 1094
    :cond_2
    if-nez v1, :cond_3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1095
    const/4 v1, 0x1

    .line 1088
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1101
    :cond_4
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    .line 1104
    iput-object v4, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    .line 1105
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->y()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1111
    packed-switch p1, :pswitch_data_0

    .line 1147
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ActivityWithProgress;->onActivityResult(IILandroid/content/Intent;)V

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1113
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 1116
    const-string/jumbo v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 1117
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    iget-object v0, v0, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :pswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1127
    const-string/jumbo v0, "is_last"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 1133
    :cond_1
    invoke-static {}, Lcom/twitter/library/util/b;->a()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->B()V

    goto :goto_0

    .line 1142
    :pswitch_3
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->i:Lcom/twitter/app/main/h;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/twitter/app/main/MainActivity;->L:Lcom/twitter/app/main/q;

    new-array v6, v6, [I

    const/4 v0, 0x2

    aput v0, v6, v4

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/app/main/h;->a(JILcom/twitter/app/main/q;[I)V

    goto :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1613
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onAttachedToWindow()V

    .line 1614
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1615
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1616
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->g()Z

    .line 918
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    sget-object v1, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/twitter/app/main/m;->a(Landroid/net/Uri;)I

    move-result v0

    .line 912
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 913
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 917
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onBackPressed()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onContentChanged()V

    .line 567
    const v0, 0x7f130362

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    .line 568
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onDestroy()V

    .line 871
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->e(Landroid/content/Context;)V

    .line 872
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->M:Lcom/twitter/app/main/o;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 873
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->x:Lcom/twitter/library/client/aa;

    .line 874
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/c;->b(Lcom/twitter/library/client/aa;)V

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->K:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 878
    iget-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->y:Z

    if-eqz v0, :cond_1

    .line 879
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->c()Lcyg;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcyg;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 887
    iput-object v2, p0, Lcom/twitter/app/main/MainActivity;->P:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    if-eqz v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 894
    :cond_4
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    if-eqz v0, :cond_5

    .line 895
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->U:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 897
    :cond_5
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    if-eqz v0, :cond_6

    .line 898
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 900
    :cond_6
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 922
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->onNewIntent(Landroid/content/Intent;)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/twitter/app/main/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 924
    invoke-direct {p0, p1}, Lcom/twitter/app/main/MainActivity;->b(Landroid/content/Intent;)V

    .line 925
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 842
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onPause()V

    .line 843
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->s:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->b(Lcom/twitter/config/f;)V

    .line 846
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;I)V

    .line 850
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 851
    const-string/jumbo v0, "ver"

    const/4 v2, 0x6

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 852
    const-string/jumbo v0, "version_code"

    sget v2, Lcom/twitter/app/main/MainActivity;->p:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 853
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0}, Lcom/twitter/app/main/m;->c()Landroid/net/Uri;

    move-result-object v0

    .line 854
    const-string/jumbo v2, "tag"

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 856
    const-string/jumbo v0, "st"

    iget-wide v2, p0, Lcom/twitter/app/main/MainActivity;->t:J

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 858
    return-void

    .line 855
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 725
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 726
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p2, p3}, Lcom/twitter/android/lb;->a(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    .line 728
    if-nez v0, :cond_0

    .line 729
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcca;->a(Z)V

    .line 732
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 543
    const-string/jumbo v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/MainActivity;->b(Landroid/net/Uri;)V

    .line 547
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 602
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onResume()V

    .line 603
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/app/main/MainActivity;->c(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/app/main/MainActivity;->B:Ljava/lang/String;

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->L()Lcom/twitter/android/client/c;

    move-result-object v1

    .line 609
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->s:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 612
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 613
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 614
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/bk;->d(Ljava/lang/String;)V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->w:Lcom/twitter/android/client/t;

    invoke-virtual {v0}, Lcom/twitter/android/client/t;->a()V

    .line 618
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 620
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 621
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 623
    sget v3, Lcom/twitter/app/main/MainActivity;->p:I

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lcom/twitter/android/client/c;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_a

    .line 626
    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    invoke-virtual {v3}, Lcom/twitter/android/client/y;->c()V

    .line 637
    :cond_2
    :goto_0
    sput v0, Lcom/twitter/app/main/MainActivity;->p:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_1
    const/4 v0, 0x0

    .line 643
    sget v3, Lcom/twitter/app/main/MainActivity;->o:I

    if-nez v3, :cond_4

    .line 644
    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "ver"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 645
    if-nez v3, :cond_c

    .line 646
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->O()Lccf;

    move-result-object v3

    invoke-virtual {v3}, Lccf;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 647
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 648
    const-string/jumbo v3, "debug_prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/twitter/app/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 650
    const-string/jumbo v4, "suppress_location_dialogs"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 651
    const/4 v0, 0x1

    .line 670
    :cond_3
    :goto_2
    const/4 v3, 0x6

    sput v3, Lcom/twitter/app/main/MainActivity;->o:I

    .line 672
    :cond_4
    const-string/jumbo v3, "location_fatigue"

    iget-wide v4, p0, Lcom/twitter/app/main/MainActivity;->I:J

    .line 673
    invoke-static {p0, v3, v4, v5}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v3

    .line 674
    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    invoke-virtual {v3}, Lcom/twitter/android/util/t;->b()V

    .line 676
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->O:Lcom/twitter/android/geo/c;

    invoke-virtual {v0, p0}, Lcom/twitter/android/geo/c;->a(Lcom/twitter/android/geo/e;)V

    .line 677
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->O:Lcom/twitter/android/geo/c;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/twitter/android/geo/c;->a(I)V

    .line 684
    :cond_5
    iget-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->Q:Z

    if-eqz v0, :cond_6

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->Q:Z

    .line 686
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 687
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->r:Lcom/twitter/android/lb;

    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, p0, v4}, Lcom/twitter/android/lb;->a(ILandroid/app/Activity;[Ljava/lang/String;)V

    .line 693
    :cond_6
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    .line 694
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    .line 697
    const-string/jumbo v3, "st"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/app/main/MainActivity;->t:J

    .line 698
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/twitter/app/main/MainActivity;->t:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 700
    :cond_7
    invoke-virtual {v1}, Lcom/twitter/android/client/c;->d()V

    .line 701
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    .line 702
    invoke-static {p0, v0}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lblv;

    move-result-object v2

    const/4 v3, 0x0

    .line 701
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 703
    iput-wide v4, p0, Lcom/twitter/app/main/MainActivity;->t:J

    .line 706
    :cond_8
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/app/main/MainActivity;->a(JLjava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/library/vineloops/c;->a(Landroid/content/Context;Lcom/twitter/library/client/bd;)Lcom/twitter/library/vineloops/c;

    move-result-object v1

    .line 710
    invoke-virtual {v1}, Lcom/twitter/library/vineloops/c;->a()V

    .line 712
    invoke-static {}, Lcom/twitter/library/client/y;->a()Lcom/twitter/library/client/y;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/client/z;

    invoke-direct {v2, v0}, Lcom/twitter/library/client/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/y;->a(Ljava/lang/Object;)V

    .line 714
    iget-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->z:Z

    if-eqz v0, :cond_9

    .line 715
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->s()V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/main/MainActivity;->z:Z

    .line 719
    :cond_9
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->x()V

    .line 720
    return-void

    .line 627
    :cond_a
    :try_start_1
    sget v3, Lcom/twitter/app/main/MainActivity;->p:I

    if-le v0, v3, :cond_2

    .line 629
    const-string/jumbo v3, "legacy_deciders_find_friends_interval_sec"

    const v4, 0xed4e00

    .line 630
    invoke-static {v3, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 632
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    .line 633
    invoke-virtual {v1}, Lcom/twitter/android/client/c;->e()J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 634
    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->N:Lcom/twitter/android/client/y;

    invoke-virtual {v3}, Lcom/twitter/android/client/y;->c()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 654
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 657
    :cond_c
    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 665
    :cond_d
    iget-object v3, p0, Lcom/twitter/app/main/MainActivity;->v:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "suppress_location_dialogs"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 666
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->O()Lccf;

    move-result-object v3

    invoke-virtual {v3}, Lccf;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 667
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v0}, Lcom/twitter/app/main/m;->c()Landroid/net/Uri;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    :cond_0
    const-string/jumbo v0, "alreadyCheckedExpiredDrafts"

    iget-boolean v1, p0, Lcom/twitter/app/main/MainActivity;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 562
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 1620
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/app/main/MainActivity;->b(J)V

    .line 1621
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 572
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onStart()V

    .line 573
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->D()V

    .line 574
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->K()Layj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/android/metrics/a;->a(Layj;J)Lcom/twitter/android/metrics/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/metrics/a;->j()V

    .line 576
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p0}, Lcom/google/android/gcm/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    .line 590
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "has_completed_signin_flow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "has_completed_signin_flow"

    .line 592
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->w()V

    .line 598
    return-void

    .line 580
    :cond_2
    iget-wide v2, p0, Lcom/twitter/app/main/MainActivity;->I:J

    invoke-static {p0, v2, v3}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Lblu;

    .line 582
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lblu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 583
    invoke-virtual {v0, v4}, Lblu;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lblu;

    .line 584
    iput-object v1, v0, Lblu;->a:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/twitter/app/main/MainActivity;->J:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->R:Lrx/ap;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->R:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 865
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onStop()V

    .line 866
    return-void
.end method

.method p()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1185
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->V:Lanb;

    invoke-virtual {v0, v2}, Lanb;->a(I)V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->T:Lanb;

    invoke-virtual {v0, v2}, Lanb;->a(I)V

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1193
    iput v2, v0, Lcom/twitter/library/client/ax;->i:I

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->C:Lcom/twitter/app/main/k;

    invoke-virtual {v0}, Lcom/twitter/app/main/k;->notifyDataSetChanged()V

    .line 1196
    invoke-direct {p0}, Lcom/twitter/app/main/MainActivity;->D()V

    .line 1197
    return-void
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 1499
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->p_()V

    .line 1500
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerDockLayout;->setTopLocked(Z)V

    .line 1501
    return-void
.end method

.method public r()Lcom/twitter/app/main/r;
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->S:Lcom/twitter/app/main/r;

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 1625
    invoke-virtual {p0}, Lcom/twitter/app/main/MainActivity;->h()Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    .line 1626
    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->ba()V

    .line 1628
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerDockLayout;->b()V

    .line 1632
    :cond_0
    return-void
.end method

.method public z_()V
    .locals 2

    .prologue
    .line 1505
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->z_()V

    .line 1506
    iget-object v0, p0, Lcom/twitter/app/main/MainActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerDockLayout;->setTopLocked(Z)V

    .line 1507
    return-void
.end method

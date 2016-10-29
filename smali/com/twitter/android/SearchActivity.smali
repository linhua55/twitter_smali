.class public Lcom/twitter/android/SearchActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/twitter/android/ku;
.implements Lcom/twitter/android/ph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/TwitterFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Lcom/twitter/android/ku;",
        "Lcom/twitter/android/ph;"
    }
.end annotation


# static fields
.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/twitter/library/widget/SlidingPanel;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/Switch;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/twitter/internal/android/widget/DockLayout;

.field private K:Landroid/support/v4/view/ViewPager;

.field private L:Lcom/twitter/android/ek;

.field private M:Lcom/twitter/android/geo/c;

.field a:Lcom/twitter/android/ol;

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Lcom/twitter/android/kj;

.field k:Lcom/twitter/internal/android/widget/HorizontalListView;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/twitter/android/lb;

.field private final o:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/twitter/library/provider/dm;

.field private q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
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

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    .line 217
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.USER_SHOW"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION"

    const/4 v2, 0x3

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH_RECENT"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH_QUERY_SAVED"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH_TREND"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android.action.SEARCH_TAKEOVER"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    .line 244
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->n:Lcom/twitter/android/lb;

    .line 245
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    return-void
.end method

.method private a(IZ)I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1313
    packed-switch p1, :pswitch_data_0

    .line 1342
    :pswitch_0
    const v0, 0x7f0a0746

    :goto_0
    return v0

    .line 1315
    :pswitch_1
    const v0, 0x7f0a08a2

    goto :goto_0

    .line 1319
    :pswitch_2
    if-eqz p2, :cond_0

    const v0, 0x7f0a0747

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0748

    goto :goto_0

    .line 1323
    :pswitch_3
    const v0, 0x7f0a074b

    goto :goto_0

    .line 1327
    :pswitch_4
    const v0, 0x7f0a074a

    goto :goto_0

    .line 1331
    :pswitch_5
    const v0, 0x7f0a08a1

    goto :goto_0

    .line 1336
    :pswitch_6
    const v0, 0x7f0a0749

    goto :goto_0

    .line 1313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/SearchActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lcom/twitter/app/common/base/f;II)Lcom/twitter/library/client/ax;
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;",
            "Lcom/twitter/app/common/base/f;",
            "II)",
            "Lcom/twitter/library/client/ax;"
        }
    .end annotation

    .prologue
    .line 1444
    invoke-virtual {p0, p3}, Lcom/twitter/android/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/Class;Lcom/twitter/app/common/base/f;Ljava/lang/String;I)Lcom/twitter/library/client/ax;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Class;Lcom/twitter/app/common/base/f;Ljava/lang/String;I)Lcom/twitter/library/client/ax;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;",
            "Lcom/twitter/app/common/base/f;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/twitter/library/client/ax;"
        }
    .end annotation

    .prologue
    .line 1450
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1451
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "search"

    .line 1452
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1453
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1454
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1456
    new-instance v1, Lcom/twitter/library/client/ay;

    invoke-direct {v1, v0, p0}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 1457
    invoke-virtual {v1, p2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1458
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 1459
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 1456
    return-object v0
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 4

    .prologue
    .line 739
    const-string/jumbo v0, "search_box"

    invoke-static {p1, v0, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 742
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 743
    invoke-static {p4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v1, p5}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 746
    :cond_0
    return-object v0
.end method

.method private a(Lcom/twitter/android/au;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 922
    invoke-static {p0}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Thanks for submitting a bad search!\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "What (user, tweet, image, etc): \n\n"

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Expected results: \n\n"

    .line 925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Actual results: \n\n\n\n"

    .line 926
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-------------------------\n\n"

    .line 927
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Request URL:\n"

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 929
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/SearchFragment;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 931
    invoke-virtual {p1}, Lcom/twitter/android/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    .line 932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    .line 933
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    return-object v0
.end method

.method private static a(ZILandroid/content/Intent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/on;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1274
    if-eqz p0, :cond_0

    .line 1275
    new-instance v0, Lcom/twitter/android/on;

    const-string/jumbo v1, "recent"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/on;-><init>(IZ)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1306
    :goto_0
    return-object v0

    .line 1277
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1306
    :pswitch_0
    new-instance v0, Lcom/twitter/android/on;

    const-string/jumbo v1, "recent"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/on;-><init>(IZ)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1280
    :pswitch_1
    new-instance v0, Lcom/twitter/android/on;

    invoke-direct {v0, v4, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    new-array v1, v5, [Lcom/twitter/android/on;

    new-instance v2, Lcom/twitter/android/on;

    invoke-direct {v2, v5, v5}, Lcom/twitter/android/on;-><init>(IZ)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1286
    :pswitch_2
    new-instance v0, Lcom/twitter/android/on;

    invoke-direct {v0, v3, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    new-array v1, v5, [Lcom/twitter/android/on;

    new-instance v2, Lcom/twitter/android/on;

    invoke-direct {v2, v3, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1293
    :pswitch_3
    new-instance v0, Lcom/twitter/android/on;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    new-array v1, v5, [Lcom/twitter/android/on;

    new-instance v2, Lcom/twitter/android/on;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1300
    :pswitch_4
    new-instance v0, Lcom/twitter/android/on;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/on;-><init>(IZ)V

    new-array v1, v5, [Lcom/twitter/android/on;

    new-instance v2, Lcom/twitter/android/on;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v5}, Lcom/twitter/android/on;-><init>(IZ)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 18

    .prologue
    .line 494
    const/4 v11, 0x0

    .line 496
    sget-object v2, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 497
    const-string/jumbo v3, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-static {v7}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    :goto_0
    return-void

    .line 503
    :cond_0
    if-eqz v2, :cond_1

    .line 505
    const-string/jumbo v3, "user_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    const-string/jumbo v3, "search_suggestion_position"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 508
    const-string/jumbo v3, "search_suggestion_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 510
    const-string/jumbo v3, "source_association"

    .line 511
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 512
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    move v3, v11

    .line 585
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 587
    if-nez v2, :cond_6

    .line 588
    const-string/jumbo v2, "search_type"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 589
    const-string/jumbo v4, "q_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 590
    const-string/jumbo v4, "q_source"

    const-string/jumbo v5, "typed_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    :cond_2
    :goto_2
    const-string/jumbo v4, "follows"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 597
    const-string/jumbo v4, "near"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 599
    const-string/jumbo v4, "terminal"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 600
    const-string/jumbo v5, "q_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 601
    move-object/from16 v0, p1

    invoke-static {v4, v2, v0}, Lcom/twitter/android/SearchActivity;->a(ZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v13

    .line 603
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    .line 604
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    .line 605
    invoke-virtual {v4}, Lcom/twitter/internal/android/widget/DockLayout;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0330

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 606
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 607
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v10, v2

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/twitter/android/on;

    .line 608
    if-eqz v10, :cond_9

    const-class v2, Lcom/twitter/android/SearchPhotosFragment;

    move-object v5, v2

    .line 610
    :goto_6
    iget v15, v9, Lcom/twitter/android/on;->a:I

    .line 611
    iget-boolean v0, v9, Lcom/twitter/android/on;->b:Z

    move/from16 v16, v0

    .line 613
    new-instance v6, Lcom/twitter/android/om;

    const-string/jumbo v2, "follows"

    const/4 v11, 0x0

    .line 614
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v2, "near"

    const/4 v12, 0x0

    .line 615
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-direct/range {v6 .. v12}, Lcom/twitter/android/om;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/on;ZZZ)V

    invoke-virtual {v6}, Lcom/twitter/android/om;->hashCode()I

    move-result v6

    .line 616
    invoke-static/range {p1 .. p1}, Lcom/twitter/android/os;->a(Landroid/content/Intent;)Lcom/twitter/android/os;

    move-result-object v2

    const v9, 0x7f0a0743

    .line 617
    invoke-virtual {v2, v9}, Lcom/twitter/android/os;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/os;

    const v9, 0x7f0a0744

    .line 618
    invoke-virtual {v2, v9}, Lcom/twitter/android/os;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/os;

    const/4 v9, 0x1

    .line 619
    invoke-virtual {v2, v9}, Lcom/twitter/android/os;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/os;

    .line 620
    invoke-virtual {v2, v15}, Lcom/twitter/android/os;->a(I)Lcom/twitter/android/os;

    move-result-object v2

    .line 621
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/twitter/android/os;->a(Z)Lcom/twitter/android/os;

    move-result-object v2

    const-string/jumbo v9, "is_saved"

    .line 622
    invoke-virtual {v2, v9, v3}, Lcom/twitter/android/os;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/os;

    .line 624
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    if-gt v9, v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v9, :cond_4

    .line 625
    :cond_3
    invoke-virtual {v2, v4}, Lcom/twitter/android/os;->e(I)Lcom/twitter/app/common/list/x;

    .line 628
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v9, "search_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 629
    sget-object v9, Lcom/twitter/util/aj;->a:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v16

    .line 630
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/SearchActivity;->p:Lcom/twitter/library/provider/dm;

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/twitter/library/provider/dm;->j(J)V

    .line 632
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/os;->a(J)Lcom/twitter/android/os;

    .line 635
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    invoke-virtual {v2}, Lcom/twitter/android/os;->a()Lcom/twitter/android/or;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/twitter/android/SearchActivity;->a(IZ)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v11, v6}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/Class;Lcom/twitter/app/common/base/f;II)Lcom/twitter/library/client/ax;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    const/4 v2, 0x3

    if-ne v15, v2, :cond_a

    if-nez v10, :cond_a

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 514
    :pswitch_0
    const-string/jumbo v4, "go_to_user"

    const-string/jumbo v5, "click"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "screen_name"

    .line 516
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "association"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchActivity;->q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 517
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "expanded_search"

    const/4 v4, 0x1

    .line 518
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 515
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 523
    :pswitch_1
    const-string/jumbo v4, "typeahead"

    const-string/jumbo v5, "profile_click"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 525
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "screen_name"

    .line 526
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "association"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchActivity;->q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 527
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "expanded_search"

    const/4 v4, 0x1

    .line 528
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 533
    :pswitch_2
    const-string/jumbo v4, "user"

    const-string/jumbo v5, "click"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "screen_name"

    .line 535
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "association"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchActivity;->q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 536
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "expanded_search"

    const/4 v4, 0x1

    .line 537
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 542
    :pswitch_3
    const-string/jumbo v2, "q_source"

    const-string/jumbo v4, "typed_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "scribe_context"

    const-string/jumbo v5, "search_box"

    .line 543
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const/4 v4, 0x0

    const-string/jumbo v5, "search"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v11

    .line 545
    goto/16 :goto_1

    .line 548
    :pswitch_4
    const-string/jumbo v2, "q_source"

    const-string/jumbo v4, "recent_search_click"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "scribe_context"

    const-string/jumbo v5, "typeahead_recent_search"

    .line 550
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string/jumbo v4, "recent"

    const-string/jumbo v5, "search"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v11

    .line 552
    goto/16 :goto_1

    .line 555
    :pswitch_5
    const-string/jumbo v2, "q_source"

    const-string/jumbo v4, "typeahead_click"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "scribe_context"

    const-string/jumbo v5, "typeahead"

    .line 556
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string/jumbo v4, "typeahead"

    const-string/jumbo v5, "search"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    move v3, v11

    .line 559
    goto/16 :goto_1

    .line 562
    :pswitch_6
    const-string/jumbo v2, "q_source"

    const-string/jumbo v4, "saved_search_click"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "scribe_context"

    const-string/jumbo v5, "typeahead_saved_search"

    .line 564
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string/jumbo v4, "saved_search"

    const-string/jumbo v5, "search"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 570
    const/4 v2, 0x1

    move v3, v2

    .line 571
    goto/16 :goto_1

    .line 574
    :pswitch_7
    const-string/jumbo v2, "q_source"

    const-string/jumbo v4, "typed_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "scribe_context"

    const-string/jumbo v5, "typeahead_cluster"

    .line 575
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string/jumbo v4, "cluster"

    const-string/jumbo v5, "search"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v11

    .line 577
    goto/16 :goto_1

    .line 593
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 603
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 605
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 608
    :cond_9
    const-class v2, Lcom/twitter/android/SearchResultsFragment;

    move-object v5, v2

    goto/16 :goto_6

    .line 639
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 644
    :cond_b
    if-eqz p2, :cond_c

    const-string/jumbo v2, "in_back_stack"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    if-nez v2, :cond_d

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    new-instance v3, Lcom/twitter/android/kv;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/SearchActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v4}, Lcom/twitter/android/kv;-><init>(Lcom/twitter/android/ku;Lcom/twitter/internal/android/widget/ToolBar;I)V

    invoke-virtual {v2, v3}, Lcom/twitter/internal/android/widget/DockLayout;->a(Lcom/twitter/internal/android/widget/g;)V

    .line 651
    new-instance v2, Lcom/twitter/android/kj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/twitter/android/kj;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    .line 653
    const v2, 0x7f130364

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/twitter/internal/android/widget/HorizontalListView;

    .line 654
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/SearchActivity;->k:Lcom/twitter/internal/android/widget/HorizontalListView;

    .line 655
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/twitter/internal/android/widget/HorizontalListView;->setVisibility(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v7, v2}, Lcom/twitter/internal/android/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/twitter/internal/android/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 659
    const v2, 0x7f130362

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    .line 660
    new-instance v2, Lcom/twitter/android/oi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    new-instance v10, Lcom/twitter/android/ej;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    invoke-direct {v10, v3}, Lcom/twitter/android/ej;-><init>(Lcom/twitter/internal/android/widget/DockLayout;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/twitter/android/oi;-><init>(Lcom/twitter/android/SearchActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/ej;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_0

    .line 664
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v2}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    invoke-virtual {v2}, Lcom/twitter/android/ek;->notifyDataSetChanged()V

    .line 666
    const-string/jumbo v2, "show_alternate"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/android/SearchActivity;->d(Z)V

    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/SearchFragment;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchFragment;)V

    return-void
.end method

.method private a(Lcom/twitter/android/SearchFragment;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 956
    if-nez p1, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->o()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 961
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 962
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->O()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 964
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    iget v3, p0, Lcom/twitter/android/SearchActivity;->b:I

    iget-boolean v4, p0, Lcom/twitter/android/SearchActivity;->c:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchActivity;->d:Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/twitter/android/ol;->a(IZZ)V

    .line 965
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->T()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->w:Z

    .line 967
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->M()Ljava/lang/String;

    .line 968
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->y()Ljava/lang/String;

    move-result-object v6

    .line 969
    iget v7, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 970
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->S()Z

    move-result v8

    .line 975
    packed-switch v7, :pswitch_data_0

    .line 1001
    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->c:Z

    if-eqz v0, :cond_3

    .line 1002
    const v0, 0x7f0a089d

    :goto_1
    move v3, v2

    move v4, v2

    move v5, v0

    .line 1013
    :goto_2
    if-nez v4, :cond_5

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->y:Z

    .line 1014
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v9

    .line 1015
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->g:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    move v0, v2

    .line 1017
    :goto_4
    const-string/jumbo v7, "search_alerts_enabled"

    .line 1018
    invoke-static {v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v3, :cond_7

    if-nez v8, :cond_7

    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/twitter/android/SearchActivity;->z:Z

    .line 1020
    iget-boolean v3, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_8

    :cond_1
    :goto_6
    iput-boolean v2, p0, Lcom/twitter/android/SearchActivity;->i:Z

    .line 1023
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    iget-boolean v2, p0, Lcom/twitter/android/SearchActivity;->i:Z

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DockLayout;->setTopVisible(Z)V

    .line 1025
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1026
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v0, :cond_9

    .line 1027
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    iget-object v2, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DockLayout;->setTopView(Landroid/view/View;)V

    .line 1034
    :cond_2
    :goto_7
    if-eqz v8, :cond_b

    .line 1035
    invoke-virtual {v9, v10}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 1036
    invoke-virtual {p0, v6}, Lcom/twitter/android/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1037
    if-eqz v5, :cond_a

    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->g:Z

    if-nez v0, :cond_a

    .line 1038
    invoke-virtual {p0, v5}, Lcom/twitter/android/SearchActivity;->l(I)V

    .line 1048
    :goto_8
    invoke-virtual {v9, v8}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowTitleEnabled(Z)V

    .line 1050
    new-instance v0, Lcom/twitter/android/og;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/og;-><init>(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/SearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/android/oq;)V

    .line 1052
    iput-boolean v8, p0, Lcom/twitter/android/SearchActivity;->u:Z

    .line 1053
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    goto/16 :goto_0

    .line 977
    :pswitch_1
    const v0, 0x7f0a08a2

    move v3, v1

    move v4, v1

    move v5, v0

    .line 979
    goto :goto_2

    .line 982
    :pswitch_2
    const v0, 0x7f0a08a4

    move v3, v1

    move v4, v2

    move v5, v0

    .line 983
    goto :goto_2

    .line 987
    :pswitch_3
    const v0, 0x7f0a08a6

    move v3, v1

    move v4, v2

    move v5, v0

    .line 988
    goto/16 :goto_2

    .line 992
    :pswitch_4
    const v0, 0x7f0a08a3

    move v3, v1

    move v4, v2

    move v5, v0

    .line 993
    goto/16 :goto_2

    .line 996
    :pswitch_5
    const v0, 0x7f0a08a1

    move v3, v1

    move v4, v1

    move v5, v0

    .line 998
    goto/16 :goto_2

    .line 1003
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    if-eqz v0, :cond_4

    .line 1004
    const v0, 0x7f0a08a0

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 1006
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 1013
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 1015
    goto/16 :goto_4

    :cond_7
    move v3, v1

    .line 1018
    goto/16 :goto_5

    :cond_8
    move v2, v1

    .line 1020
    goto :goto_6

    .line 1030
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 1040
    :cond_a
    invoke-virtual {p0, v10}, Lcom/twitter/android/SearchActivity;->b(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1043
    :cond_b
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 1045
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-virtual {p0, v10}, Lcom/twitter/android/SearchActivity;->b(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 975
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .prologue
    .line 757
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 759
    const/16 v1, 0xc

    invoke-static {p7, p8, p5, v1, p6}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 761
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 762
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    .line 785
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/DockLayout;->setTopVisible(Z)V

    .line 786
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 787
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/SearchActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/SearchActivity;)Lcom/twitter/internal/android/widget/DockLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    return-object v0
.end method

.method private b(Lcom/twitter/android/SearchFragment;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1348
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->d()Z

    .line 1350
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->e:Z

    if-eqz v0, :cond_1

    .line 1352
    iget v0, p0, Lcom/twitter/android/SearchActivity;->b:I

    if-ne v0, v7, :cond_2

    move v0, v7

    .line 1353
    :goto_0
    iget v1, p0, Lcom/twitter/android/SearchActivity;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v1}, Lcom/twitter/android/kj;->a()I

    move-result v1

    if-ne v1, v7, :cond_3

    move v4, v7

    .line 1355
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->y()Ljava/lang/String;

    move-result-object v9

    .line 1357
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1358
    new-instance v3, Lcom/twitter/android/on;

    iget v5, p0, Lcom/twitter/android/SearchActivity;->b:I

    invoke-direct {v3, v5, v0}, Lcom/twitter/android/on;-><init>(IZ)V

    .line 1359
    new-instance v0, Lcom/twitter/android/om;

    iget-boolean v5, p0, Lcom/twitter/android/SearchActivity;->c:Z

    iget-boolean v6, p0, Lcom/twitter/android/SearchActivity;->d:Z

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/om;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/on;ZZZ)V

    .line 1360
    invoke-virtual {v0}, Lcom/twitter/android/om;->hashCode()I

    move-result v0

    .line 1361
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/SearchActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "query"

    .line 1362
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "query_name"

    .line 1363
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "search_type"

    iget v5, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 1364
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "follows"

    iget-boolean v5, p0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 1365
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "near"

    iget-boolean v5, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 1366
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "terminal"

    iget-boolean v5, p0, Lcom/twitter/android/SearchActivity;->u:Z

    .line 1367
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "photo_list"

    if-nez v4, :cond_4

    .line 1368
    :goto_2
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "in_back_stack"

    .line 1369
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "q_source"

    .line 1370
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1372
    iget-object v2, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1373
    if-eqz v0, :cond_0

    .line 1375
    const-string/jumbo v2, "search_id"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1377
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1378
    iput-boolean v8, p0, Lcom/twitter/android/SearchActivity;->e:Z

    .line 1380
    :cond_1
    return-void

    :cond_2
    move v0, v8

    .line 1352
    goto/16 :goto_0

    :cond_3
    move v4, v8

    .line 1353
    goto/16 :goto_1

    :cond_4
    move v7, v8

    .line 1367
    goto :goto_2
.end method

.method private b(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 751
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 753
    return-void
.end method

.method private b(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 938
    const-string/jumbo v0, "periscope_search_enabled_android_4273"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "enabled"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    const v1, 0x7f130713

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    const v1, 0x7f130714

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 944
    :cond_0
    if-eqz p1, :cond_1

    .line 945
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ol;->a(Z)V

    .line 946
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/twitter/library/widget/SlidingPanel;->b(I)V

    .line 947
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->b()Z

    .line 953
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/twitter/library/widget/SlidingPanel;->a(I)V

    .line 950
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    invoke-virtual {v0, v4}, Lcom/twitter/android/ol;->a(Z)V

    .line 951
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->a()Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/SearchActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/twitter/android/SearchFragment;)V
    .locals 4

    .prologue
    .line 1383
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->o()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 1384
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 1385
    invoke-virtual {p1}, Lcom/twitter/android/SearchFragment;->O()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 1386
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    iget v1, p0, Lcom/twitter/android/SearchActivity;->b:I

    iget-boolean v2, p0, Lcom/twitter/android/SearchActivity;->c:Z

    iget-boolean v3, p0, Lcom/twitter/android/SearchActivity;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/ol;->a(IZZ)V

    .line 1387
    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1075
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1076
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1078
    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 1390
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1391
    return-void

    .line 1390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/SearchActivity;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->z:Z

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1057
    const v0, 0x7f13072b

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1059
    if-eqz v0, :cond_0

    .line 1062
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    .line 1063
    const v0, 0x7f13072c

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    .line 1064
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    iput-object v1, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    .line 1067
    iput-object v1, p0, Lcom/twitter/android/SearchActivity;->C:Landroid/widget/Switch;

    goto :goto_0
.end method

.method private l()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 1081
    .line 1082
    const-string/jumbo v0, "SpikingHawk"

    .line 1083
    const v0, 0x7f0a0af0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1084
    const-string/jumbo v1, "SpikingHawk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1085
    const-string/jumbo v2, "SpikingHawk"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 1086
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1087
    new-instance v0, Lcom/twitter/android/oe;

    invoke-direct {v0, p0}, Lcom/twitter/android/oe;-><init>(Lcom/twitter/android/SearchActivity;)V

    .line 1094
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1095
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1096
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1097
    invoke-virtual {v4, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1098
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1100
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1099
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0af1

    .line 1103
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0aef

    new-instance v2, Lcom/twitter/android/of;

    invoke-direct {v2, p0}, Lcom/twitter/android/of;-><init>(Lcom/twitter/android/SearchActivity;)V

    .line 1104
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c9

    const/4 v2, 0x0

    .line 1114
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1115
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1102
    return-object v0
.end method


# virtual methods
.method protected E_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 692
    sget-object v0, Lcom/twitter/android/SearchActivity;->l:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 693
    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 708
    :cond_0
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "in_back_stack"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    return-object v0

    .line 701
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ad()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/twitter/library/client/ax;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    invoke-virtual {v0, p1}, Lcom/twitter/android/ek;->c(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 270
    const v1, 0x7f04035f

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 271
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 272
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 274
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 276
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 278
    :cond_0
    return-object v0
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
    .line 1409
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1411
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1416
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1417
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1419
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1236
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 1237
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1238
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/String;)Z

    move-result v5

    .line 1240
    if-ne p2, v6, :cond_0

    const v3, 0x7f0a071d

    move v4, v3

    .line 1242
    :goto_0
    if-ne p2, v6, :cond_1

    const v3, 0x7f0a071e

    .line 1245
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 1270
    :goto_2
    return-void

    .line 1240
    :cond_0
    const v3, 0x7f0a0270

    move v4, v3

    goto :goto_0

    .line 1242
    :cond_1
    const v3, 0x7f0a0271

    goto :goto_1

    .line 1248
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1251
    :cond_2
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1253
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v0, :cond_3

    .line 1254
    invoke-direct {p0, v5}, Lcom/twitter/android/SearchActivity;->c(Z)V

    goto :goto_2

    .line 1256
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    .line 1257
    const v3, 0x7f130807

    invoke-virtual {v0, v3}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v3

    .line 1258
    const v4, 0x7f130806

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    .line 1259
    invoke-virtual {v3, v5}, Lbjl;->b(Z)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lbjl;->c(Z)Lbjl;

    .line 1260
    if-nez v5, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lbjl;->b(Z)Lbjl;

    move-result-object v0

    if-nez v5, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Lbjl;->c(Z)Lbjl;

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    .line 1245
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ZLandroid/widget/ListView;Lcom/twitter/android/SearchFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    if-eq p3, v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    if-eqz p1, :cond_2

    .line 401
    invoke-virtual {p0, v1, v4}, Lcom/twitter/android/SearchActivity;->a(ZLjava/lang/String;)Z

    .line 402
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchActivity;->a(Z)V

    .line 403
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchActivity;->h(Z)V

    .line 404
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 405
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p0, v2, v4}, Lcom/twitter/android/SearchActivity;->a(ZLjava/lang/String;)Z

    .line 410
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchActivity;->h(Z)V

    .line 411
    invoke-direct {p0, v2}, Lcom/twitter/android/SearchActivity;->a(Z)V

    .line 412
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 413
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcyd;)Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 865
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v3

    .line 866
    const-wide/16 v4, 0x0

    .line 867
    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 871
    :cond_0
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 916
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 873
    :sswitch_0
    new-instance v0, Lcom/twitter/library/api/search/b;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/search/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;J)V

    .line 874
    invoke-virtual {v0, v7}, Lcom/twitter/library/api/search/b;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    const/16 v1, 0x64

    .line 873
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 875
    invoke-interface {p1, v7}, Lcyd;->f(Z)Lcyd;

    move-result-object v0

    invoke-interface {v0, v7}, Lcyd;->e(Z)Lcyd;

    .line 876
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal::saved_search:add"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v6

    .line 877
    goto :goto_0

    .line 880
    :sswitch_1
    new-instance v0, Lcom/twitter/library/api/search/b;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/search/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;J)V

    .line 881
    invoke-virtual {v0, v6}, Lcom/twitter/library/api/search/b;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    const/16 v1, 0x65

    .line 880
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 882
    invoke-interface {p1, v7}, Lcyd;->f(Z)Lcyd;

    move-result-object v0

    invoke-interface {v0, v7}, Lcyd;->e(Z)Lcyd;

    .line 883
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal::saved_search:remove"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v6

    .line 884
    goto :goto_0

    .line 887
    :sswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchFragment;)V

    .line 888
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->t:Z

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->b(Z)V

    .line 889
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal:filter_sheet::impression"

    aput-object v2, v1, v7

    .line 890
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 889
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v6

    .line 891
    goto :goto_0

    .line 894
    :sswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/SearchFragment;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal::query:share"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v6

    .line 896
    goto/16 :goto_0

    .line 899
    :sswitch_4
    invoke-static {p0}, Lcom/twitter/android/au;->a(Landroid/content/Context;)Lcom/twitter/android/au;

    move-result-object v0

    .line 900
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0ae8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad search for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] from Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 902
    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/au;)Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/twitter/android/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->b:Ljava/util/concurrent/Executor;

    .line 905
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/od;

    invoke-direct {v2, p0}, Lcom/twitter/android/od;-><init>(Lcom/twitter/android/SearchActivity;)V

    .line 906
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 904
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    move v0, v6

    .line 913
    goto/16 :goto_0

    .line 871
    :sswitch_data_0
    .sparse-switch
        0x7f1307f6 -> :sswitch_3
        0x7f130805 -> :sswitch_2
        0x7f130806 -> :sswitch_0
        0x7f130807 -> :sswitch_1
        0x7f13080a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 773
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 774
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "search_features_bad_search_report_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const v0, 0x7f14002b

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 778
    :cond_0
    const v0, 0x7f140029

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 779
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 780
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLcom/twitter/model/topic/TwitterTopic;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 423
    if-nez p4, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v7

    .line 426
    :cond_1
    const-string/jumbo v0, "search_ui_event_takeover_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p4}, Lcom/twitter/model/topic/TwitterTopic;->b()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {p4}, Lcom/twitter/model/topic/TwitterTopic;->d()Lcom/twitter/model/topic/l;

    move-result-object v0

    iget v2, v0, Lcom/twitter/model/topic/l;->b:I

    .line 431
    invoke-static {v1, v2}, Lcom/twitter/android/events/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/twitter/android/events/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p4}, Lcom/twitter/model/topic/TwitterTopic;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p4}, Lcom/twitter/model/topic/TwitterTopic;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/twitter/android/widget/TopicView$TopicData;

    invoke-direct {v8, p4}, Lcom/twitter/android/widget/TopicView$TopicData;-><init>(Lcom/twitter/model/topic/TwitterTopic;)V

    move-object v0, p0

    move-object v4, p1

    .line 436
    invoke-static/range {v0 .. v8}, Lcom/twitter/android/sl;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/android/widget/TopicView$TopicData;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    const-string/jumbo v3, "com.twitter.android.action.SEARCH_TAKEOVER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "search_takeover"

    .line 441
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "event_page_type"

    .line 442
    invoke-virtual {v3, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "search_id"

    .line 443
    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "search_src_ref"

    .line 445
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "search_src_ref"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.twitter.android.action.SEARCH_TAKEOVER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 449
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->finish()V

    .line 450
    const v0, 0x7f05004c

    const v3, 0x7f05004d

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/SearchActivity;->overridePendingTransition(II)V

    .line 451
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "search::::takeover"

    aput-object v4, v3, v7

    .line 452
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 453
    invoke-static {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 454
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v7, v9

    .line 455
    goto/16 :goto_0
.end method

.method public a(ZLjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->x:Z

    if-nez v1, :cond_3

    .line 386
    iput-boolean p1, p0, Lcom/twitter/android/SearchActivity;->i:Z

    .line 387
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->i:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->y:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->z:Z

    if-eqz v1, :cond_2

    .line 388
    :cond_1
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->i:Z

    .line 390
    :cond_2
    const/4 v0, 0x1

    .line 392
    :cond_3
    return v0
.end method

.method public b(Lcyg;)I
    .locals 7

    .prologue
    const v6, 0x7f130805

    const v5, 0x7f1307f6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 804
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Lcyg;)I

    .line 805
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 806
    const v1, 0x7f1307cc

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    .line 807
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v1, :cond_4

    .line 808
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 813
    :goto_0
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->w:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 814
    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 819
    :cond_0
    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v1

    .line 824
    if-eqz v1, :cond_3

    .line 825
    const v4, 0x7f130807

    invoke-virtual {v0, v4}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v4

    .line 826
    const v5, 0x7f130806

    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v5

    .line 827
    invoke-virtual {v1}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/String;)Z

    move-result v1

    .line 829
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->u:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->v:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "search_alerts_enabled"

    .line 830
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 831
    :cond_2
    invoke-virtual {v4, v3}, Lbjl;->b(Z)Lbjl;

    .line 832
    invoke-virtual {v5, v3}, Lbjl;->b(Z)Lbjl;

    .line 833
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchActivity;->c(Z)V

    .line 840
    :cond_3
    :goto_4
    const/4 v0, 0x2

    return v0

    .line 811
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 813
    goto :goto_1

    :cond_6
    move v1, v3

    .line 815
    goto :goto_2

    :cond_7
    move v1, v3

    .line 820
    goto :goto_3

    .line 835
    :cond_8
    invoke-virtual {v4, v1}, Lbjl;->b(Z)Lbjl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbjl;->c(Z)Lbjl;

    .line 836
    if-nez v1, :cond_9

    move v0, v2

    :goto_5
    invoke-virtual {v5, v0}, Lbjl;->b(Z)Lbjl;

    move-result-object v0

    if-nez v1, :cond_a

    :goto_6
    invoke-virtual {v0, v2}, Lbjl;->c(Z)Lbjl;

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v2, v3

    goto :goto_6
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/DockLayout;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->E:Lcom/twitter/internal/android/widget/DockLayout;

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 285
    invoke-static {p0, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->p:Lcom/twitter/library/provider/dm;

    .line 288
    const-string/jumbo v0, "search_alerts_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/twitter/android/SearchActivity;->i()V

    .line 292
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040369

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v3, "search"

    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 296
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->q:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 298
    const v0, 0x7f1302d3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/SlidingPanel;

    .line 299
    new-instance v3, Lcom/twitter/android/ol;

    invoke-direct {v3, v0, p0}, Lcom/twitter/android/ol;-><init>(Lcom/twitter/library/widget/SlidingPanel;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 300
    iget-object v4, v3, Lcom/twitter/android/ol;->n:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, v3, Lcom/twitter/android/ol;->o:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v4, v3, Lcom/twitter/android/ol;->p:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iput-object v3, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    .line 305
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/SlidingPanel;->a(I)V

    .line 307
    new-instance v4, Lcom/twitter/android/ok;

    invoke-direct {v4, v0, v3}, Lcom/twitter/android/ok;-><init>(Lcom/twitter/library/widget/SlidingPanel;Lcom/twitter/android/ol;)V

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/SlidingPanel;->setPanelSlideListener(Lcom/twitter/library/widget/ad;)V

    .line 308
    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 309
    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    .line 311
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 312
    iput-boolean v2, p0, Lcom/twitter/android/SearchActivity;->g:Z

    .line 314
    if-nez p1, :cond_1

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    .line 317
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    .line 318
    const-string/jumbo v0, "search"

    invoke-static {p0, v0}, Lcom/twitter/android/ip;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/twitter/android/SearchActivity;->a(Landroid/content/Intent;Z)V

    .line 339
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->i:Z

    .line 342
    new-instance v0, Lcom/twitter/android/geo/c;

    const-string/jumbo v2, "search_activity_location_dialog"

    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->n:Lcom/twitter/android/lb;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/twitter/android/geo/c;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/twitter/android/lb;I)V

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->M:Lcom/twitter/android/geo/c;

    .line 344
    return-void

    .line 320
    :cond_1
    const-string/jumbo v0, "search_saved_queries"

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    .line 322
    const-string/jumbo v0, "search_ids"

    .line 323
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    .line 324
    const-string/jumbo v0, "filter_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 325
    const-string/jumbo v0, "filter_following"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 326
    const-string/jumbo v0, "filter_near"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 327
    const-string/jumbo v0, "filter_scope_alt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->f:Z

    .line 328
    const-string/jumbo v0, "state_panel_maximized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->h:Z

    .line 329
    const-string/jumbo v0, "state_show_toolbar_content"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->v:Z

    .line 331
    const-string/jumbo v0, "backstack"

    .line 332
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 333
    if-eqz v0, :cond_2

    .line 334
    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->p:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 338
    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->ba()V

    .line 675
    :cond_0
    return-void
.end method

.method public g()Lcom/twitter/android/AbsPagesAdapter;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    return-object v0
.end method

.method public h()Lcom/twitter/android/SearchFragment;
    .locals 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 1475
    :cond_0
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->L:Lcom/twitter/android/ek;

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ek;->a(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/library/client/ax;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/SearchFragment;

    goto :goto_0
.end method

.method protected n()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/SearchFragment;->M()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1

    .line 847
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 681
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 687
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v6

    .line 1210
    if-eqz v6, :cond_2

    .line 1211
    invoke-virtual {v6}, Lcom/twitter/android/SearchFragment;->C()Ljava/lang/String;

    move-result-object v3

    .line 1212
    const-wide/16 v4, 0x0

    .line 1213
    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1216
    :cond_0
    new-instance v0, Lcom/twitter/library/api/search/b;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/search/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;J)V

    .line 1217
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1218
    if-eqz p2, :cond_3

    .line 1220
    invoke-virtual {v6}, Lcom/twitter/android/SearchFragment;->G()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    invoke-direct {p0}, Lcom/twitter/android/SearchActivity;->l()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1223
    :cond_1
    invoke-virtual {v0, v7}, Lcom/twitter/library/api/search/b;->h(I)Lcom/twitter/library/service/x;

    .line 1224
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1225
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal::saved_search:add"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1232
    :cond_2
    :goto_0
    return-void

    .line 1227
    :cond_3
    invoke-virtual {v0, v8}, Lcom/twitter/library/api/search/b;->h(I)Lcom/twitter/library/service/x;

    .line 1228
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1229
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal::saved_search:remove"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1127
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v2

    .line 1128
    if-nez v2, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->x:Z

    .line 1133
    invoke-virtual {v2}, Lcom/twitter/android/SearchFragment;->P()Z

    move-result v3

    .line 1134
    invoke-virtual {v2}, Lcom/twitter/android/SearchFragment;->O()Z

    move-result v4

    .line 1136
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v5

    .line 1137
    const v6, 0x7f13070f

    if-ne v5, v6, :cond_8

    .line 1139
    const v3, 0x7f130711

    if-ne p2, v3, :cond_4

    .line 1140
    const/4 v0, 0x3

    .line 1153
    :cond_2
    :goto_1
    iget v3, p0, Lcom/twitter/android/SearchActivity;->b:I

    if-eq v3, v0, :cond_3

    .line 1154
    iput v0, p0, Lcom/twitter/android/SearchActivity;->b:I

    .line 1155
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->e:Z

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getPanelState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1160
    invoke-direct {p0, v2}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchFragment;)V

    goto :goto_0

    .line 1141
    :cond_4
    const v3, 0x7f130712

    if-ne p2, v3, :cond_5

    .line 1142
    const/4 v0, 0x5

    goto :goto_1

    .line 1143
    :cond_5
    const v3, 0x7f130713

    if-ne p2, v3, :cond_6

    .line 1144
    const/16 v0, 0xc

    goto :goto_1

    .line 1145
    :cond_6
    const v3, 0x7f130715

    if-ne p2, v3, :cond_7

    .line 1146
    const/4 v0, 0x6

    goto :goto_1

    .line 1147
    :cond_7
    const v3, 0x7f130716

    if-ne p2, v3, :cond_2

    .line 1148
    const/4 v0, 0x2

    goto :goto_1

    .line 1162
    :cond_8
    const v2, 0x7f130717

    if-ne v5, v2, :cond_a

    .line 1163
    const v2, 0x7f130719

    if-ne p2, v2, :cond_9

    move v0, v1

    .line 1164
    :cond_9
    if-eq v3, v0, :cond_0

    .line 1165
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->c:Z

    .line 1166
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->e:Z

    goto :goto_0

    .line 1168
    :cond_a
    const v2, 0x7f13071a

    if-ne v5, v2, :cond_0

    .line 1169
    const v2, 0x7f13071c

    if-ne p2, v2, :cond_b

    move v0, v1

    .line 1170
    :cond_b
    if-eq v4, v0, :cond_0

    .line 1171
    if-eqz v0, :cond_c

    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v2

    invoke-interface {v2}, Lcca;->d()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1172
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->M:Lcom/twitter/android/geo/c;

    invoke-virtual {v0, v1}, Lcom/twitter/android/geo/c;->a(I)V

    goto :goto_0

    .line 1175
    :cond_c
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 1176
    iput-boolean v1, p0, Lcom/twitter/android/SearchActivity;->e:Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 717
    const v1, 0x7f130602

    if-ne v0, v1, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->I()Z

    .line 719
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Ljava/lang/CharSequence;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const v1, 0x7f13071d

    if-ne v0, v1, :cond_2

    .line 721
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal:filter_sheet:more:click"

    aput-object v2, v1, v4

    .line 722
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 721
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 723
    invoke-direct {p0, v4}, Lcom/twitter/android/SearchActivity;->b(Z)V

    goto :goto_0

    .line 724
    :cond_2
    const v1, 0x7f13071f

    if-ne v0, v1, :cond_3

    .line 725
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal:filter_sheet::apply"

    aput-object v2, v1, v4

    .line 726
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 725
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 727
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchFragment;)V

    goto :goto_0

    .line 728
    :cond_3
    const v1, 0x7f130720

    if-ne v0, v1, :cond_0

    .line 729
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "search:universal:filter_sheet::cancel"

    aput-object v2, v1, v4

    .line 730
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 729
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 731
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->d()Z

    .line 732
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchFragment;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    .line 1395
    new-instance v0, Lcom/twitter/android/bt;

    sget-object v1, Lcom/twitter/library/provider/de;->a:Landroid/net/Uri;

    .line 1396
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1395
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/oh;->a:[Ljava/lang/String;

    const-string/jumbo v4, "type=? AND latitude IS NULL AND longitude IS NULL"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x6

    .line 1398
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string/jumbo v6, "query_id DESC, time ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->c:Lcom/twitter/library/client/Session$LoginStatus;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->p:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->b(Ljava/util/Collection;)V

    .line 380
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 381
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v3, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    .line 471
    const v0, 0x7f13071e

    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 473
    const v4, 0x7f13070e

    invoke-virtual {v3, v4}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 474
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 475
    add-int/2addr v4, v0

    .line 476
    invoke-virtual {v3, v4}, Lcom/twitter/library/widget/SlidingPanel;->setPanelPreviewHeight(I)V

    .line 477
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    add-int/2addr v0, v4

    if-le v5, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->t:Z

    .line 480
    invoke-virtual {v3}, Lcom/twitter/library/widget/SlidingPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 482
    invoke-virtual {v3}, Lcom/twitter/library/widget/SlidingPanel;->getPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/SearchActivity;->t:Z

    if-eqz v0, :cond_2

    .line 484
    :goto_1
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchActivity;->b(Z)V

    .line 485
    invoke-virtual {v3}, Lcom/twitter/library/widget/SlidingPanel;->requestLayout()V

    .line 487
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 477
    goto :goto_0

    :cond_2
    move v1, v2

    .line 483
    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1465
    if-ne p3, v0, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->c()V

    .line 1470
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->K:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
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
    .line 1426
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1427
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 767
    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 768
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/SearchActivity;->a(Landroid/content/Intent;Z)V

    .line 769
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1185
    if-ne p1, v2, :cond_1

    .line 1186
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p2, p3}, Lcom/twitter/android/lb;->a(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    .line 1188
    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->d:Z

    if-eq v1, v0, :cond_0

    .line 1189
    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->d:Z

    .line 1190
    iput-boolean v2, p0, Lcom/twitter/android/SearchActivity;->e:Z

    .line 1192
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->a:Lcom/twitter/android/ol;

    iget v2, p0, Lcom/twitter/android/SearchActivity;->b:I

    iget-boolean v3, p0, Lcom/twitter/android/SearchActivity;->c:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchActivity;->d:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/ol;->a(IZZ)V

    .line 1194
    if-nez v0, :cond_1

    .line 1199
    invoke-static {p0}, Lcom/twitter/android/geo/c;->b(Landroid/content/Context;)V

    .line 1200
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcca;->a(Z)V

    .line 1203
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchActivity;->x:Z

    .line 350
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchFragment;)V

    .line 351
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string/jumbo v0, "search_saved_queries"

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->r:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 357
    const-string/jumbo v0, "search_ids"

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->s:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 358
    const-string/jumbo v0, "filter_type"

    iget v1, p0, Lcom/twitter/android/SearchActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string/jumbo v0, "filter_following"

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string/jumbo v0, "filter_near"

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    const-string/jumbo v0, "filter_scope_alt"

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    const-string/jumbo v1, "state_panel_maximized"

    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    .line 363
    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getPanelState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 362
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    const-string/jumbo v0, "state_show_toolbar_content"

    iget-boolean v1, p0, Lcom/twitter/android/SearchActivity;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    const-string/jumbo v0, "backstack"

    iget-object v1, p0, Lcom/twitter/android/SearchActivity;->o:Ljava/util/Stack;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 366
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->getPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->A:Lcom/twitter/library/widget/SlidingPanel;

    invoke-virtual {v0}, Lcom/twitter/library/widget/SlidingPanel;->d()Z

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->e()Z

    move-result v0

    return v0
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 791
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->p_()V

    .line 792
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->k:Lcom/twitter/internal/android/widget/HorizontalListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/HorizontalListView;->setVisibility(I)V

    .line 793
    return-void
.end method

.method protected q_()[I
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public z_()V
    .locals 2

    .prologue
    .line 797
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->z_()V

    .line 798
    iget-object v0, p0, Lcom/twitter/android/SearchActivity;->k:Lcom/twitter/internal/android/widget/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/HorizontalListView;->setVisibility(I)V

    .line 799
    return-void
.end method

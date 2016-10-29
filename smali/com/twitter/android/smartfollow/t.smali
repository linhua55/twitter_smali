.class public Lcom/twitter/android/smartfollow/t;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/common/inject/t;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/inject/t;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/smartfollow/t;->a:Lcom/twitter/app/common/inject/t;

    .line 48
    iput p2, p0, Lcom/twitter/android/smartfollow/t;->b:I

    .line 49
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lapn;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lapn;

    new-instance v1, Lazn;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1, p1}, Lapn;-><init>(Lazt;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/twitter/app/common/util/StateSaver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/twitter/app/common/util/StateSaver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/smartfollow/t;->a:Lcom/twitter/app/common/inject/t;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/twitter/app/common/util/StateSaver;->a()Lcom/twitter/app/common/util/StateSaver;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/StateSaver;

    return-object v0
.end method

.method static a(Landroid/app/Application;Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lapi;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lapi;

    new-instance v1, Lazn;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1, p1}, Lapi;-><init>(Lazt;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method

.method static b()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    return-object v0
.end method

.method static c()Lapb;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lapc;

    invoke-direct {v0}, Lapc;-><init>()V

    const-string/jumbo v1, "nux"

    .line 76
    invoke-virtual {v0, v1}, Lapc;->a(Ljava/lang/String;)Lapc;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lapc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapb;

    .line 75
    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/twitter/android/smartfollow/t;->b:I

    return v0
.end method

.method d()Lcom/twitter/app/common/util/StateSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/finishingtimeline/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "presenter_finishing_timeline"

    invoke-direct {p0, v0}, Lcom/twitter/android/smartfollow/t;->a(Ljava/lang/String;)Lcom/twitter/app/common/util/StateSaver;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/twitter/app/common/util/StateSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-string/jumbo v0, "presenter_follow_people"

    invoke-direct {p0, v0}, Lcom/twitter/android/smartfollow/t;->a(Ljava/lang/String;)Lcom/twitter/app/common/util/StateSaver;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/twitter/app/common/util/StateSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-string/jumbo v0, "presenter_waiting_for_suggestions"

    invoke-direct {p0, v0}, Lcom/twitter/android/smartfollow/t;->a(Ljava/lang/String;)Lcom/twitter/app/common/util/StateSaver;

    move-result-object v0

    return-object v0
.end method

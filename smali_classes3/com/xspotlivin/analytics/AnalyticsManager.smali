.class public final enum Lcom/xspotlivin/analytics/AnalyticsManager;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xspotlivin/analytics/AnalyticsManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xspotlivin/analytics/AnalyticsManager;

.field private static final synthetic b:[Lcom/xspotlivin/analytics/AnalyticsManager;


# instance fields
.field private mAnalyticsRecorder:Lcom/xspotlivin/analytics/a;

.field private mAppStateListener:Lddm;

.field private mCurrentScreen:Ljava/lang/String;

.field private mSummaries:Lcom/xspotlivin/analytics/summary/SummaryHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/xspotlivin/analytics/AnalyticsManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/xspotlivin/analytics/AnalyticsManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xspotlivin/analytics/AnalyticsManager;->a:Lcom/xspotlivin/analytics/AnalyticsManager;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xspotlivin/analytics/AnalyticsManager;

    sget-object v1, Lcom/xspotlivin/analytics/AnalyticsManager;->a:Lcom/xspotlivin/analytics/AnalyticsManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xspotlivin/analytics/AnalyticsManager;->b:[Lcom/xspotlivin/analytics/AnalyticsManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance v0, Lcom/xspotlivin/analytics/summary/SummaryHashMap;

    invoke-direct {v0}, Lcom/xspotlivin/analytics/summary/SummaryHashMap;-><init>()V

    iput-object v0, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mSummaries:Lcom/xspotlivin/analytics/summary/SummaryHashMap;

    .line 33
    return-void
.end method

.method public static a()Lcom/xspotlivin/analytics/AnalyticsManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/xspotlivin/analytics/AnalyticsManager;->a:Lcom/xspotlivin/analytics/AnalyticsManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xspotlivin/analytics/AnalyticsManager;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/xspotlivin/analytics/AnalyticsManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xspotlivin/analytics/AnalyticsManager;

    return-object v0
.end method

.method public static values()[Lcom/xspotlivin/analytics/AnalyticsManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/xspotlivin/analytics/AnalyticsManager;->b:[Lcom/xspotlivin/analytics/AnalyticsManager;

    invoke-virtual {v0}, [Lcom/xspotlivin/analytics/AnalyticsManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xspotlivin/analytics/AnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mCurrentScreen:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mCurrentScreen:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "None"

    .line 80
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string/jumbo v2, "Screen"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v2, "Previous Screen"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mAnalyticsRecorder:Lcom/xspotlivin/analytics/a;

    invoke-interface {v1, p1}, Lcom/xspotlivin/analytics/a;->a(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mCurrentScreen:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "None"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mCurrentScreen:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/xspotlivin/analytics/summary/d;)V
    .locals 4
    .param p1    # Lcom/xspotlivin/analytics/summary/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-interface {p1}, Lcom/xspotlivin/analytics/summary/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/xspotlivin/analytics/summary/d;->b()Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-interface {p1}, Lcom/xspotlivin/analytics/summary/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p0, v1, v0}, Lcom/xspotlivin/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    iget-object v2, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mSummaries:Lcom/xspotlivin/analytics/summary/SummaryHashMap;

    invoke-interface {p1}, Lcom/xspotlivin/analytics/summary/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xspotlivin/analytics/summary/SummaryHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reported \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lddn;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xspotlivin/analytics/AnalyticsManager;->mAnalyticsRecorder:Lcom/xspotlivin/analytics/a;

    invoke-interface {v0, p1, p2}, Lcom/xspotlivin/analytics/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void
.end method

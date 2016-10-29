.class public final enum Lcom/twitter/library/scribe/LogCategory;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/scribe/LogCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/scribe/LogCategory;

.field public static final enum b:Lcom/twitter/library/scribe/LogCategory;

.field public static final enum c:Lcom/twitter/library/scribe/LogCategory;

.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/twitter/library/scribe/LogCategory;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/twitter/library/scribe/LogCategory;

    const-string/jumbo v1, "CLIENT_APPLOG_UPLOAD_EVENT"

    const-string/jumbo v2, "client_applog_upload_event"

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/library/scribe/LogCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/library/scribe/LogCategory;->a:Lcom/twitter/library/scribe/LogCategory;

    .line 12
    new-instance v0, Lcom/twitter/library/scribe/LogCategory;

    const-string/jumbo v1, "CLIENT_NETWORK_REQUEST_EVENT"

    const-string/jumbo v2, "client_network_request_event"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/library/scribe/LogCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/library/scribe/LogCategory;->b:Lcom/twitter/library/scribe/LogCategory;

    .line 13
    new-instance v0, Lcom/twitter/library/scribe/LogCategory;

    const-string/jumbo v1, "DDG_IMPRESSION"

    const-string/jumbo v2, "ddg_impression"

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/library/scribe/LogCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/library/scribe/LogCategory;->c:Lcom/twitter/library/scribe/LogCategory;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twitter/library/scribe/LogCategory;

    sget-object v1, Lcom/twitter/library/scribe/LogCategory;->a:Lcom/twitter/library/scribe/LogCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/library/scribe/LogCategory;->b:Lcom/twitter/library/scribe/LogCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/library/scribe/LogCategory;->c:Lcom/twitter/library/scribe/LogCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/library/scribe/LogCategory;->e:[Lcom/twitter/library/scribe/LogCategory;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/twitter/library/scribe/LogCategory;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-static {}, Lcom/twitter/library/scribe/LogCategory;->b()V

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/twitter/library/scribe/LogCategory;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/twitter/library/scribe/LogCategory;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v1, "thrift_logging_category_blacklist"

    .line 47
    invoke-static {v1}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/scribe/LogCategory;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/twitter/library/scribe/LogCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/LogCategory;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/scribe/LogCategory;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/twitter/library/scribe/LogCategory;->e:[Lcom/twitter/library/scribe/LogCategory;

    invoke-virtual {v0}, [Lcom/twitter/library/scribe/LogCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/scribe/LogCategory;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/twitter/library/scribe/LogCategory;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/twitter/library/scribe/LogCategory;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/scribe/LogCategory;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "test_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/scribe/LogCategory;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class public final enum Lcom/twitter/library/network/livepipeline/StreamManager$Status;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/network/livepipeline/StreamManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

.field public static final enum b:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

.field public static final enum c:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

.field private static final synthetic d:[Lcom/twitter/library/network/livepipeline/StreamManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/network/livepipeline/StreamManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 28
    new-instance v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/twitter/library/network/livepipeline/StreamManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->b:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 29
    new-instance v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/twitter/library/network/livepipeline/StreamManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->c:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->b:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->c:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->d:[Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/network/livepipeline/StreamManager$Status;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/network/livepipeline/StreamManager$Status;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->d:[Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    invoke-virtual {v0}, [Lcom/twitter/library/network/livepipeline/StreamManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    return-object v0
.end method

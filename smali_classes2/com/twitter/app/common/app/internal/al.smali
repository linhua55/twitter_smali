.class public final Lcom/twitter/app/common/app/internal/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/database/lru/s;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/schema/LruSchema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/twitter/app/common/app/internal/al;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/app/internal/al;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/database/lru/schema/LruSchema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/twitter/app/common/app/internal/al;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/common/app/internal/al;->b:Lden;

    .line 22
    return-void
.end method

.method public static a(Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/database/lru/schema/LruSchema;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/database/lru/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/app/common/app/internal/al;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/app/internal/al;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/database/lru/s;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/app/common/app/internal/al;->b:Lden;

    .line 27
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/lru/schema/LruSchema;

    invoke-static {v0}, Lcom/twitter/app/common/app/internal/aj;->a(Lcom/twitter/database/lru/schema/LruSchema;)Lcom/twitter/database/lru/s;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/lru/s;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/app/common/app/internal/al;->a()Lcom/twitter/database/lru/s;

    move-result-object v0

    return-object v0
.end method

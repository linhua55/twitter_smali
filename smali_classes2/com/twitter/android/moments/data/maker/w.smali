.class public final Lcom/twitter/android/moments/data/maker/w;
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
        "Lcom/twitter/android/moments/data/maker/t;",
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
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/android/moments/data/maker/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/data/maker/w;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/twitter/android/moments/data/maker/w;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/w;->b:Lden;

    .line 24
    sget-boolean v0, Lcom/twitter/android/moments/data/maker/w;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/w;->c:Lden;

    .line 26
    return-void
.end method

.method public static a(Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/q;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/moments/data/maker/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/data/maker/w;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/data/maker/w;-><init>(Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/data/maker/t;
    .locals 3

    .prologue
    .line 30
    new-instance v2, Lcom/twitter/android/moments/data/maker/t;

    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/w;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/lru/am;

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/w;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/data/maker/q;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/moments/data/maker/t;-><init>(Lcom/twitter/database/lru/am;Lcom/twitter/android/moments/data/maker/q;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/maker/w;->a()Lcom/twitter/android/moments/data/maker/t;

    move-result-object v0

    return-object v0
.end method

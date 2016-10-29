.class public final Lcom/twitter/android/moments/data/maker/s;
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
        "Lcom/twitter/android/moments/data/maker/q;",
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
            "Lcom/twitter/android/moments/data/maker/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/twitter/android/moments/data/maker/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/data/maker/s;->a:Z

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
            "Lcom/twitter/android/moments/data/maker/f;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/twitter/android/moments/data/maker/s;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/s;->b:Lden;

    .line 23
    sget-boolean v0, Lcom/twitter/android/moments/data/maker/s;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/s;->c:Lden;

    .line 25
    return-void
.end method

.method public static a(Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/f;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/r;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/moments/data/maker/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/data/maker/s;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/data/maker/s;-><init>(Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/data/maker/q;
    .locals 3

    .prologue
    .line 29
    new-instance v2, Lcom/twitter/android/moments/data/maker/q;

    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/s;->b:Lden;

    .line 30
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/data/maker/f;

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/s;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/data/maker/r;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/moments/data/maker/q;-><init>(Lcom/twitter/android/moments/data/maker/f;Lcom/twitter/android/moments/data/maker/r;)V

    .line 29
    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/maker/s;->a()Lcom/twitter/android/moments/data/maker/q;

    move-result-object v0

    return-object v0
.end method

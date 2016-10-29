.class public final Lady;
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
        "Ladw;",
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
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lady;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lady;->a:Z

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
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lady;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lady;->b:Lden;

    .line 28
    sget-boolean v0, Lady;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1
    iput-object p2, p0, Lady;->c:Lden;

    .line 30
    return-void
.end method

.method public static a(Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;>;)",
            "Ldagger/internal/c",
            "<",
            "Ladw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lady;

    invoke-direct {v0, p0, p1}, Lady;-><init>(Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Ladw;
    .locals 3

    .prologue
    .line 34
    new-instance v2, Ladw;

    iget-object v0, p0, Lady;->b:Lden;

    .line 35
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    iget-object v1, p0, Lady;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/data/d;

    invoke-direct {v2, v0, v1}, Ladw;-><init>(Lcom/twitter/app/common/account/UserIdentifier;Lcom/twitter/android/moments/data/d;)V

    .line 34
    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lady;->a()Ladw;

    move-result-object v0

    return-object v0
.end method

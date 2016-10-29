.class public final Lcom/twitter/library/api/moments/maker/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config::",
        "Lcom/twitter/library/api/moments/maker/d",
        "<TRes;TErr;>;Res:",
        "Ljava/lang/Object;",
        "Err:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/library/api/moments/maker/e",
        "<TConfig;TRes;TErr;>;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<TConfig;TRes;TErr;>;>;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/library/api/moments/maker/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/library/api/moments/maker/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<TConfig;TRes;TErr;>;>;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/f;->b:Lddo;

    .line 33
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/f;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/f;->c:Lden;

    .line 35
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/f;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_2
    iput-object p3, p0, Lcom/twitter/library/api/moments/maker/f;->d:Lden;

    .line 37
    return-void
.end method

.method public static a(Lddo;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Config::",
            "Lcom/twitter/library/api/moments/maker/d",
            "<TRes;TErr;>;Res:",
            "Ljava/lang/Object;",
            "Err:",
            "Ljava/lang/Object;",
            ">(",
            "Lddo",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<TConfig;TRes;TErr;>;>;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<TConfig;TRes;TErr;>;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/library/api/moments/maker/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/api/moments/maker/f;-><init>(Lddo;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/api/moments/maker/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/moments/maker/e",
            "<TConfig;TRes;TErr;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/f;->b:Lddo;

    new-instance v3, Lcom/twitter/library/api/moments/maker/e;

    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/f;->c:Lden;

    .line 44
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/f;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    invoke-direct {v3, v0, v1}, Lcom/twitter/library/api/moments/maker/e;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 41
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/moments/maker/e;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/f;->a()Lcom/twitter/library/api/moments/maker/e;

    move-result-object v0

    return-object v0
.end method

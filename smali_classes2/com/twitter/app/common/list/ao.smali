.class public final Lcom/twitter/app/common/list/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/app/common/list/aa",
        "<TT;TA;>;>;"
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
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;>;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/app/common/list/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/list/ao;->a:Z

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
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;>;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/twitter/app/common/list/ao;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/common/list/ao;->b:Lddo;

    .line 29
    sget-boolean v0, Lcom/twitter/app/common/list/ao;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    iput-object p2, p0, Lcom/twitter/app/common/list/ao;->c:Lden;

    .line 31
    sget-boolean v0, Lcom/twitter/app/common/list/ao;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iput-object p3, p0, Lcom/twitter/app/common/list/ao;->d:Lden;

    .line 33
    return-void
.end method

.method public static a(Lddo;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Lcvt",
            "<TT;>;>(",
            "Lddo",
            "<",
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;>;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/aj;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/app/common/list/ao;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/app/common/list/ao;-><init>(Lddo;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/list/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v2, p0, Lcom/twitter/app/common/list/ao;->b:Lddo;

    new-instance v3, Lcom/twitter/app/common/list/aa;

    iget-object v0, p0, Lcom/twitter/app/common/list/ao;->c:Lden;

    .line 39
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/twitter/app/common/list/ao;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/aj;

    invoke-direct {v3, v0, v1}, Lcom/twitter/app/common/list/aa;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/app/common/list/aj;)V

    .line 37
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/aa;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/app/common/list/ao;->a()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    return-object v0
.end method

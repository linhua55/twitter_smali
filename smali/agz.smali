.class public final Lagz;
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
        "Lcet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lagy;

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
            "Lcom/twitter/library/provider/dm;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lagz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lagz;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lagy;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagy;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Lagz;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lagz;->b:Lagy;

    .line 33
    sget-boolean v0, Lagz;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1
    iput-object p2, p0, Lagz;->c:Lden;

    .line 35
    sget-boolean v0, Lagz;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_2
    iput-object p3, p0, Lagz;->d:Lden;

    .line 37
    sget-boolean v0, Lagz;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_3
    iput-object p4, p0, Lagz;->e:Lden;

    .line 39
    return-void
.end method

.method public static a(Lagy;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagy;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lagz;

    invoke-direct {v0, p0, p1, p2, p3}, Lagz;-><init>(Lagy;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcet;
    .locals 4

    .prologue
    .line 43
    iget-object v3, p0, Lagz;->b:Lagy;

    iget-object v0, p0, Lagz;->c:Lden;

    .line 45
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lagz;->d:Lden;

    .line 46
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/provider/dm;

    iget-object v2, p0, Lagz;->e:Lden;

    .line 47
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/UserIdentifier;

    .line 44
    invoke-virtual {v3, v0, v1, v2}, Lagy;->a(Landroid/content/Context;Lcom/twitter/library/provider/dm;Lcom/twitter/app/common/account/UserIdentifier;)Lcet;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcet;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lagz;->a()Lcet;

    move-result-object v0

    return-object v0
.end method

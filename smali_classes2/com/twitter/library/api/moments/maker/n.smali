.class public final Lcom/twitter/library/api/moments/maker/n;
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
        "Lcom/twitter/library/api/moments/maker/m;",
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
            "Lcom/twitter/library/api/moments/maker/o;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcet;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/i;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/library/api/moments/maker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/library/api/moments/maker/n;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/o;",
            ">;",
            "Lden",
            "<",
            "Lcet;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/i;",
            ">;",
            "Lden",
            "<",
            "Lcup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/n;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/n;->b:Lden;

    .line 30
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/n;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_1
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/n;->c:Lden;

    .line 32
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/n;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_2
    iput-object p3, p0, Lcom/twitter/library/api/moments/maker/n;->d:Lden;

    .line 34
    sget-boolean v0, Lcom/twitter/library/api/moments/maker/n;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_3
    iput-object p4, p0, Lcom/twitter/library/api/moments/maker/n;->e:Lden;

    .line 36
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/o;",
            ">;",
            "Lden",
            "<",
            "Lcet;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/i;",
            ">;",
            "Lden",
            "<",
            "Lcup;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/library/api/moments/maker/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/twitter/library/api/moments/maker/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twitter/library/api/moments/maker/n;-><init>(Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/api/moments/maker/m;
    .locals 5

    .prologue
    .line 40
    new-instance v4, Lcom/twitter/library/api/moments/maker/m;

    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/n;->b:Lden;

    .line 41
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/moments/maker/o;

    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/n;->c:Lden;

    .line 42
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcet;

    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/n;->d:Lden;

    .line 43
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/api/moments/maker/i;

    iget-object v3, p0, Lcom/twitter/library/api/moments/maker/n;->e:Lden;

    .line 44
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcup;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/twitter/library/api/moments/maker/m;-><init>(Lcom/twitter/library/api/moments/maker/o;Lcet;Lcom/twitter/library/api/moments/maker/i;Lcup;)V

    .line 40
    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/n;->a()Lcom/twitter/library/api/moments/maker/m;

    move-result-object v0

    return-object v0
.end method

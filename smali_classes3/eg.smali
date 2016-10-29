.class final Leg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lel;


# instance fields
.field final synthetic a:Leh;


# direct methods
.method constructor <init>(Leh;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Leg;->a:Leh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Leg;->a:Leh;

    invoke-interface {v0}, Leh;->e()V

    .line 27
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Leg;->a:Leh;

    invoke-interface {v0}, Leh;->f()V

    .line 32
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Leg;->a:Leh;

    invoke-interface {v0}, Leh;->d()V

    .line 37
    return-void
.end method

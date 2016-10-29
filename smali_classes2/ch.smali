.class public Lch;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lck;


# direct methods
.method public static a()Lcj;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lch;->a:Lck;

    invoke-virtual {v0}, Lck;->b()Lcj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lck;

    invoke-direct {v0, p0}, Lck;-><init>(Landroid/content/Context;)V

    sput-object v0, Lch;->a:Lck;

    .line 44
    sget-object v0, Lch;->a:Lck;

    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Lbm;)V

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;Lev;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p1}, Lez;->a(Lev;)V

    .line 39
    invoke-static {p0}, Lch;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public static b()Lez;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lez;->a()Lez;

    move-result-object v0

    return-object v0
.end method

.method public static c()Let;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lch;->b()Lez;

    move-result-object v0

    invoke-virtual {v0}, Lez;->g()Let;

    move-result-object v0

    return-object v0
.end method

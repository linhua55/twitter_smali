.class public Lcty;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lctj;

.field public final b:Lcto;

.field public final c:Lcub;


# direct methods
.method private constructor <init>(Lcua;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcua;->a:Lctj;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj;

    iput-object v0, p0, Lcty;->a:Lctj;

    .line 29
    iget-object v0, p1, Lcua;->c:Lcub;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcub;

    iput-object v0, p0, Lcty;->c:Lcub;

    .line 30
    iget-object v0, p1, Lcua;->b:Lcto;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcto;

    iput-object v0, p0, Lcty;->b:Lcto;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcua;Lctz;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcty;-><init>(Lcua;)V

    return-void
.end method

.class Lbja;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbiz;


# direct methods
.method constructor <init>(Lbiz;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lbja;->b:Lbiz;

    iput-object p2, p0, Lbja;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lbja;->b:Lbiz;

    iget-object v1, p0, Lbja;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbiz;->a(Lbiz;Ljava/lang/String;)V

    .line 81
    return-void
.end method

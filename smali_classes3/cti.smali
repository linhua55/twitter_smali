.class public Lcti;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lctg;


# instance fields
.field public final a:Lcud;

.field public final b:Lcom/twitter/model/timeline/dd;


# direct methods
.method public constructor <init>(Lcud;Lcom/twitter/model/timeline/dd;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcti;->b:Lcom/twitter/model/timeline/dd;

    .line 16
    iput-object p1, p0, Lcti;->a:Lcud;

    .line 17
    return-void
.end method

.class Lanx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/model/core/TwitterUser;

.field final synthetic c:Lanw;


# direct methods
.method constructor <init>(Lanw;Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lanx;->c:Lanw;

    iput-object p2, p0, Lanx;->a:Landroid/content/Context;

    iput-object p3, p0, Lanx;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v1, p0, Lanx;->a:Landroid/content/Context;

    iget-object v0, p0, Lanx;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v0, p0, Lanx;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v4, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v0, p0, Lanx;->c:Lanw;

    invoke-static {v0}, Lanw;->a(Lanw;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    move-object v7, v5

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    .line 135
    return-void
.end method

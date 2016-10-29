.class public Lcom/twitter/model/moments/maker/MomentEditOperation;
.super Lcom/twitter/model/moments/maker/w;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Lcom/twitter/model/moments/maker/n;

.field public final e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/maker/l;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/w;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/twitter/model/moments/maker/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->a:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/twitter/model/moments/maker/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->b:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/twitter/model/moments/maker/l;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->c:Ljava/lang/Boolean;

    .line 37
    iget-object v0, p1, Lcom/twitter/model/moments/maker/l;->d:Lcom/twitter/model/moments/maker/n;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    .line 38
    iget-object v0, p1, Lcom/twitter/model/moments/maker/l;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/MomentEditOperation;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 39
    return-void
.end method
